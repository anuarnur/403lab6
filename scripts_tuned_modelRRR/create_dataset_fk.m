% input - length of dataset or length of feature-label pairs

function [feature, label] = create_dataset_fk(data_size)

%planarrobot_student;
RRR;
% just take a random value of q --> feature
% calculate the FK --> label
% return


rng(0,'twister');

% q1
q_min = -180;
q_max = 180;
q1 = (q_max-q_min).*rand(data_size,1) + q_min;

% q2
q_min = -90;
q_max = 90;
q2 = (q_max-q_min).*rand(data_size,1) + q_min;

% q3
q_min = -90;
q_max = 90;
q3 = (q_max-q_min).*rand(data_size,1) + q_min;
% 
q = [q1, q2, q3]*deg;
pose_robot = zeros(data_size,3);


for i=1:data_size
   
    %pose_end = planar_robot.fkine(q(i, :));
    pose_end = robot.fkine(q(i, :));
    xyz = transl(pose_end);
   
    % also more labels can be added
    pose_robot(i, :) =  xyz;
    
end
    
 feature = q;
 label = pose_robot;
    
end