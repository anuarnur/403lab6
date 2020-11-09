clear L
deg = pi/180;

L(1) = Revolute('d', 1, 'a', 0, 'alpha', pi/2, ...
    'I', [0, 0, 0, 0, 0, 0], ...
    'm', 0, ...
    'Jm', 1e-4, ...
    'G', 500, ...
    'B', 10e-4, ...
    'qlim', [-180 180]*deg );

L(2) = Revolute('d', 0, 'a', 1, 'alpha', 0, ...
    'I', [0, 0.84, 0.84, 0, 0, 0], ...
    'm', 10, ...
    'Jm', 1e-4, ...
    'G', 500, ...
    'B', 10e-4, ...
    'qlim', [-90 90]*deg );

L(3) = Revolute('d', 0, 'a', 1, 'alpha', 0, ...
    'I', [0, 0.84, 0.84, 0, 0, 0], ...
    'm', 10, ...
    'Jm', 1e-4, ...
    'G', 500, ...
    'B', 10e-4, ...
    'qlim', [-90 90]*deg );

robot = SerialLink(L, 'name', 'RRR manipulator');
clear L