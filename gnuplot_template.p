filename='data'
set ylabel "Diffrakciós hatásfok"
set xlabel "Meghajtó teljesítmény (W)"
#set title "Diffrakció I-P karakterisztikája"
set terminal eps
set output filename.'.eps'
#f(x)=b+sin(a*sqrt(x))**2
#a = 1
#b=1
#fit[0:0.4] f(x) filename via a,b
#set datafile separator ","
p[0:1][0:1] filename using 1:2:3:4 t "Mérési adatpontok" lw 2 with xyerr, f(x) lw 2 t "Illesztett függvény"
