#line 1 "C:/Users/DELL/Documents/EbdedSystem/project2/code/project2.c"
 int count1[]={0b00100011,0b00100010,0b00100001,0b00100000,0b00011001,0b00011000,0b00010111,0b00010110,0b00010101,0b00010100,0b00010011,0b00010010,0b00010001,0b00010000,0b00001001,0b00001000,0b00000111,0b00000110,0b00000101,0b00000100,0b00000011,0b00000010,0b00000001,0b00000000};
 int count2[]={0b00010101,0b00010100,0b00010011,0b00010010,0b00010001,0b00010000,0b00001001,0b00001000,0b00000111,0b00000110,0b00000101,0b00000100,0b00000011,0b00000010,0b00000001,0b00000000};
int i;
int j;
int k;
int flag;
 void automatic(){
 while(1){
 adcon1=7;
flag=0,i=0,j=0,trisb.b0=1,trisb.b1=1,trisc=0,trisa=0;
trisd=0,portc=0,portd=0,trisb.b2=0,trisb.b3=0,trisb.b4=0;
trisb.b5=0,trisb.b6=0,porta.B0=0,porta.B1=0,porta.B2=0;
porta.B5=0,portb.B2=0,porta.B3=0,portb.B3=0,portb.B4=0;
portb.B5=0,portb.B6=0,gie_bit=1,inte_bit=1,intedg_bit=1;
 if(portb.b0==0){
 portb.B3=1;
 portb.B4=1;
 portb.B5=1;
 portb.B6=1;
 while(i<=23){
 if(flag==0) {
 portc=count1[i];
 porta.B0=1;
 porta.B1=0;
 porta.B2=0;
 porta.B5=1;
 portb.B2=0;
 porta.B3=0;
 delay_ms(1000);
 if(i==20){
 while(i<=23){
 if(flag==0){
 portc=count1[i];
 porta.B0=1;
 porta.B1=0;
 porta.B2=0;
 porta.B5=0;
 portb.B2=1;
 porta.B3=0;
 i++;
 delay_ms(1000);
 }
 }
 }
 i++;
 }

 }
 i=0;
 while(j<=15){
 if(flag==0){
 portc=count2[j];
 porta.B0=0;
 porta.B1=0;
 porta.B2=1;
 porta.B5=0;
 portb.B2=0;
 porta.B3=1;
 delay_ms(1000);
 if(j==12){
 while(j<=15){
 if(flag==0){
 portc=count2[j];
 porta.B0=0;
 porta.B1=1;
 porta.B2=0;
 porta.B5=0;
 portb.B2=0;
 porta.B3=1;
 j++;
 delay_ms(1000);
 }
 }
 }
 j++;
}
}
j=0;
 }
 }
 }
 void interrupt(){
 if(intf_bit==1){
 portb.b3=0;
 portb.b4=0;
 portb.b5=0;
 portb.b6=0;
 if (portb.B1==1){
 flag=1;
 if(porta.b5==1&&porta.B0==1){
 for(k=3;k>=0;k--){
 porta.b5=0;
 portb.b2=1;
 portb.B5=1;
 portb.b6=1;
 portc=k;
 delay_ms(1000);
 if(k==0){
 porta.b3=1;
 portb.B2=0;
 porta.b2=1;
 porta.b0=0;
 portd=k;
 portc=k;
 delay_ms(1000);
 }
 }
 }
 else if(porta.b2==1&&porta.b3==1){
 for(k=3;k>=0;k--){
 porta.B2=0;
 porta.B1=1;
 portb.b3=1;
 portb.b4=1;
 portc=k;
 delay_ms(1000);
 if(k==0){
 porta.b3=0;
 porta.B0=1;
 porta.B1=0;
 porta.B5=1;
 portd=k;
 portc=k;
 delay_ms(1000);
 }
 }
 }
 }
 if(portb.b0==0){
 intf_bit=0;
 automatic();
 }
 }
 }
void main(){
 intf_bit=0;
automatic();
}
