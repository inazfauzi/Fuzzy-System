a=newfis('Penilaian Tes Masuk Paskibraka');
a=addvar(a,'input','TINGGI BADAN',[100 200]);
a=addmf(a,'input',1,'Pendek','trapmf',[0 0 150 155]);
a=addmf(a,'input',1,'Tinggi','trapmf',[155 170 200 200]);
figure; plotmf(a,'input',1)

a=addvar(a,'input','TES ILMU PENGETAHUAN UMUM',[0 100]);
a=addmf(a,'input',2,'Buruk','trimf',[0 50 60]);
a=addmf(a,'input',2,'Cukup','trimf',[60 75 85]);
a=addmf(a,'input',2,'Baik','trimf',[85 90 100]);
figure; plotmf(a,'input',2)

a=addvar(a,'input','KESEHATAN FISIK',[0 100]);
a=addmf(a,'input',3,'Buruk','trapmf',[0 0 50 60]);
a=addmf(a,'input',3,'Cukup','trimf',[60 75 85]);
a=addmf(a,'input',3,'Baik','trapmf',[85 90 100 100]);
figure; plotmf(a,'input',3)


x = input('Tinggi : ');
    if x>=0 && x<=150
        disp ('Pendek, NilaiKeanggotaan = 1')
 
    elseif x>150&& x<=155
        disp ('Pendek')
        NilaiKeanggotaan =(155-x)/(155-150)
        
    elseif x>=155 && x<165
        disp ('Tinggi')
        NilaiKeanggotaan = (x-155)/(165-155)
 
    else 
        disp ('Tinggi, NilaiKeanggotaan = 1')
 
    end

y = input('Nilai Tes Ilmu Pengetahuan Umum :');
    if y>=0 && y<=50
        disp ('Buruk')
        NilaiKeanggotaan = (y-0)/(50-0)
 
    elseif y>=50 && y<=60
        disp ('Buruk')
        NilaiKeanggotaan =(60-y)/(60-50)
  
    elseif y>=60 && y<=75
        disp ('Cukup')
        NilaiKeanggotaan =(y-60)/(75-60)
    
    elseif y>=75 && y<=85
        disp ('Cukup')
        NilaiKeanggotaan =(85-y)/(85-75)
    
    elseif y>=85 && y<=90
        disp ('Baik')
        NilaiKeanggotaan =(y-85)/(90-85)
        
    elseif y>=90 && y<=100
        disp ('Baik')
        NilaiKeanggotaan = (100-y)/(100-90)
        
    end

z = input('Nilai Tes Kesehatan :');
    if z>=0 && x<=50
        disp ('Buruk, NilaiKeanggotaan = 1')
 
    elseif z>50 && z<= 60
        disp ('Buruk')
        NilaiKeanggotaan =(60-z)/(60-50)
   
    elseif z>=60 && z< 75
        disp ('Cukup')
        NilaiKeanggotaan =(z-60)/(75-60)
        
    elseif z>=75 && z<= 85
        disp ('Cukup')
        NilaiKeanggotaan =(85-z)/(85-75)
   
    elseif z>=85 && z< 90
        disp ('Baik')
        NilaiKeanggotaan =(z-85)/(90-85)
 
    else 
        disp ('Baik, NilaiKeanggotaan = 1')
 
    end