This the first simulator of AgRob Modular-E with MowIt Tool! 

Run the launch file to test it:

$ roslaunch agrob_simulator agrob_model_e_seixo.launch

If the vineyard model is not loaded, set the following variable with the correct directory:

$ export GAZEBO_MODEL_PATH=/home/user/catkin_ws/src/Agrob4Simulation/AgRob_simulator/models:${GAZEBO_MODEL_PATH}

Note: You may also need to adjust the joystick port. You can use the launch file parameter "joy_port".

PS: Other parameters that may need adjustment are the Torques of the tractions wheels, and the parameters "Friction" and "Damping" of the MowIt connector Joints and wheels!
