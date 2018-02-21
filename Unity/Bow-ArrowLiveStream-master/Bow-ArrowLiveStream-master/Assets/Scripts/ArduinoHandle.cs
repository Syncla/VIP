using CielaSpike;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO.Ports;
using System;
public class ArduinoHandle : MonoBehaviour
{
    private string port;
    public Quaternion rot = new Quaternion(1, 0, 0, 0);
    private Vector3 accel1 = Vector3.zero;
    private Vector3 accel2 = Vector3.zero;
    private Vector3 accel3 = Vector3.zero;
    private Vector3 avg = Vector3.zero;

    private System.DateTime now;
    private System.DateTime old = System.DateTime.Now;
    private Vector3 lastAccel1 = Vector3.zero;
    public Vector3 integral1 = Vector3.zero;

    private Vector3 lastAccel2 = Vector3.zero;
    public Vector3 integral2 = Vector3.zero;

    private Vector3 lastAccel3 = Vector3.zero;
    public Vector3 integral3 = Vector3.zero;

    private Vector3 avglastAccel = Vector3.zero;
    public Vector3 avgintegral = Vector3.zero;

    SerialPort sp;//= new SerialPort("COM3",115200);
    public float speed = 400F;
    public List<float> tokens = new List<float>();

    string[] data = { "", "", "" };
    public float x=0;
    public float y=0;
    public float z=0;
    byte[] input = new byte[1000];
    void Awake()
    {
        DontDestroyOnLoad(transform.gameObject);
    }
    void Start()
    {
        //handshake protocol to find the mpus
        print("Starting");
        print("Pinging all ports for glove");
        print(SerialPort.GetPortNames());
        /*
        foreach (string s in SerialPort.GetPortNames())
        {
            try
            {
                sp = new SerialPort(s, 115200);
                sp.Open();

                sp.ReadTimeout = 1000;
                sp.Write("P\r");

                if (sp.ReadLine() == "PONG")
                {
                    port = s;
                    sp.Close();
                    break;
                }
            }
            catch
            {
                print("Port " + s + " failed");
                continue;
            }
            finally
            {
                sp.Close();
            }
        }*/

        print("Found glove on port " + port);

        sp = new SerialPort("COM9", 57600);
        sp.Open();
        //sp.Write("continue\r\n");

        
        print(sp.IsOpen + " : State of COM port");
        sp.ReadTimeout = 10;
        try
        {
            print(sp.ReadLine());
        }
        catch (TimeoutException)
        {
            print("Failed");
        }
        // Handshake complete

        // Talk to the arduino on another thread. This makes all data
        // as up to date as possible. Putting it in the fixed update results in slower
        // data reads as it is fixed at .02 seconds to update. Right now this is not a problem,
        // as it takes about .023 seconds to get data, but if we move to a faster processer or better USB protocol
        // this will actually let as take advantage of its speed
        StartCoroutine(ArduinoHandler());

    }
    private void OnApplicationQuit()
    {
        //Close the port if it is open, this prevents the need to unplug and replug the board every time
        //(Look into the problem of writing to a file while it is open by another file for more info)
        if (sp.IsOpen)
        {
            sp.Close();
        }
    }

    IEnumerator ArduinoHandler()
    {
        Task task;
        yield return this.StartCoroutineAsync(talk(), out task);
    }
    IEnumerator talk()
    {
        //Talk to the arduino here
        while (true)
        {
            //Check if things need to be calibrated
            yield return Ninja.JumpToUnity;
            if (Input.GetKeyDown(KeyCode.Space))
            {
                sp.Write("C\r");
                //rb.MovePosition(new Vector3(0, 10, 0));

            }
            //Forces a recalibration (but it breaks things, so dont use it right now (breaks happen because of dmp overflows on the arduino, needs to be handled if we want this feature))
            if (Input.GetKeyDown(KeyCode.R))
            {
                sp.Write("R\r");
                //rb.MovePosition(new Vector3(0, 10, 0));

            }
            yield return Ninja.JumpBack;
            //Make sure the port is open
            if (sp.IsOpen)
            {
                string s = "";
                try
                {
                    //request data
                    // sp.Write("D\r");
                    int pos = 0;
                    string[] seperators = new string[] { "\t", " " };
                    string[] filtered;
                    
                    int start = 0;
                    try
                    {
                        s = sp.ReadLine();

                        //reset the list
                        tokens.Clear();
                        float waitForCalibration = 0;
                        //its in the process of calibrating, so wait
                        //print(s);
                        if (s != "")
                        {
                            //done calibrations
                            
                            //unpack the data into a list
                            filtered = s.Split(seperators, StringSplitOptions.RemoveEmptyEntries);
                            for (int i = 3; i < filtered.Length; i++)
                            {
                                //print(filtered[i]);
                            }
                            //print("------");
                            if (filtered.Length>3)
                            {
                                //print('x');
                                //print(filtered[3]);
                                //print('y');
                                //print(filtered[4]);
                                //print('z');
                                //print(filtered[5]);

                                data[0] = filtered[3];//.Split(seperators, StringSplitOptions.RemoveEmptyEntries)[0];
                                data[1] = filtered[4];//.Split(seperators, StringSplitOptions.RemoveEmptyEntries)[0];
                                data[2] = filtered[5];//.Split(seperators, StringSplitOptions.RemoveEmptyEntries)[0];

                            }
                            else
                            {
                                //print("ERR");
                                //print(filtered);
                            }

                        }
//                        print(data[0]);
 //                       print(data[1]);
   //                     print(data[2]);
     //                   print("-------");
                        //if (sp !=null )
                        //{
                        //  if (sp.BytesToRead > 32)
                        // {
                        sp.DiscardInBuffer();
                        sp.DiscardOutBuffer();
                        // }
                        //}
                    }
                    catch ( System.TimeoutException)
                    {

                    }
                }
                catch (System.TimeoutException)
                {
                    //This happens often, just ignore it, its caused by the teensy not
                    //being calibrated to unity, it passes in a few seconds once everything syncs up
                }
                catch (System.Exception e)
                {
                    //Unknown error, print it out fo debugging
                    //print(s);
                    //print("Error when reading data " + e);
                }
                //did we actually get data?

                //make a Quaternion to represent rotation
                // float w = tokens[0];
                float tempx = 0;
                float tempy = 0;
                float tempz = 0;
                try
                {
                    //print(data);
                    tempx = float.Parse(data[0]);
                    tempz = float.Parse(data[1]);
                    tempy = float.Parse(data[2]);
                }
                catch (System.Exception e)
                {
                    //Unknown error, print it out fo debugging
                    //print("bad data");
                }
                x = tempx;
                y = tempy;
                z = tempz;
                //do any inversions here
                // Quaternion q = new Quaternion(x, y, z, -w);

                // rot = q;

                //get the accelerations (try to make this more modular in the future, right now its hard coded for three mpus)

            }
        }

    }
    void FixedUpdate()
    {
        //Rotate the object based on most recent rotation calculation
        //rb.MoveRotation(rot);
        //Take the current velocity and the calculated next velocity. Use that to get 
        //acceleration and then get the force that should be applied by multiplying by mass
        //rb.AddForce(((integral - rb.velocity) / Time.deltaTime) * m);

    }
}

