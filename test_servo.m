!ping 192.168.0.101
h = raspi('192.168.0.101','pi','malina')
openShell(h)
wcam = webcam(h);
img = snapshot(wcam);
image(img)
s = servo(h,18)

while(1)
    for pos=0:10:180
        writePosition(s, pos)
        pos
        pause(1)
    end
    writePosition(s, 0)
    pause(1)
end
writePosition(s, 120);
%system(h,'shutdown -h now', 'sudo');
clear s h img
