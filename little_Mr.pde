void draw_player_left(int center_x,int center_y,int head_len,int body_len,boolean arm_move){
  fill(255);
  int center[]={center_x,center_y};
  int half_head_len=Math.round(head_len*0.3);
  int mouth_len=head_len/8*3;
  int half_body_len_1=Math.round(body_len*0.3);
  int half_body_len_2=Math.round(body_len*0.5);
  //background
  stroke(255);
  rect(center[0]-head_len/2-half_head_len,center[1]-head_len-half_head_len,
        head_len+half_head_len+half_head_len,half_head_len+head_len+body_len+half_body_len_2*sqrt(2)*sqrt(3)/2);
  stroke(0);
  //head
  rect(center[0]-head_len/2,center[1]-head_len,head_len,head_len);
  quad(center[0]-head_len/2,center[1]-head_len
      ,center[0]+head_len/2,center[1]-head_len
      ,center[0]+head_len/2+half_head_len,center[1]-head_len-half_head_len
      ,center[0]-(head_len/2-half_head_len),center[1]-head_len-half_head_len);
  quad(center[0]+head_len/2,center[1]-head_len
      ,center[0]+head_len/2+half_head_len,center[1]-head_len-half_head_len
      ,center[0]+head_len/2+half_head_len,center[1]-half_head_len
      ,center[0]+head_len/2,center[1]);
  //glasses
  center[1]=center[1]-head_len/3*2;
  line(center[0]-head_len/2,center[1],center[0]-head_len/2+head_len/8,center[1]);
  rect(center[0]-head_len/2+head_len/8,center[1]-head_len/8,head_len/4+head_len/16,head_len/4);
  line(center[0]-head_len/16,center[1],center[0]+head_len/16,center[1]);
  line(center[0]+head_len/2,center[1],center[0]+head_len/2-head_len/8,center[1]);
  rect(center[0]+head_len/16,center[1]-head_len/8,head_len/4+head_len/16,head_len/4);
  line(center[0]+head_len/2,center[1],center[0]+head_len/2+half_head_len,center[1]-half_head_len);
  //mouth
  center[1]=center_y-head_len/3;
  line(center[0]-mouth_len/2,center[1],center[0]+mouth_len/2,center[1]);
  //body
  center[0]=center_x+half_head_len/2;
  center[1]=center_y;
  line(center[0],center[1],center[0],center[1]+body_len);
  if(arm_move){
    line(center[0],center[1]+body_len/3,center[0]+half_body_len_1,center[1]+body_len/3-half_body_len_1);
    line(center[0],center[1]+body_len/3,center[0]-half_body_len_1,center[1]+body_len/3-half_body_len_1);
  }else{
    line(center[0],center[1]+body_len/3,center[0]+half_body_len_1,center[1]+body_len/3+half_body_len_1);
    line(center[0],center[1]+body_len/3,center[0]-half_body_len_1,center[1]+body_len/3+half_body_len_1);
  }
  if(arm_move){
    line(center[0],center[1]+body_len,center[0]+half_body_len_2*sqrt(2)/2,center[1]+body_len+half_body_len_2*sqrt(2)*sqrt(3)/2);
    line(center[0],center[1]+body_len,center[0]-half_body_len_2*sqrt(2)/2,center[1]+body_len+half_body_len_2*sqrt(2)*sqrt(3)/2);
  }else{
    line(center[0],center[1]+body_len,center[0]+half_body_len_2,center[1]+body_len+half_body_len_2);
    line(center[0],center[1]+body_len,center[0]-half_body_len_2,center[1]+body_len+half_body_len_2);
  }
  fill(0);
}

void draw_player_right(int center_x,int center_y,int head_len,int body_len,boolean arm_move){
  fill(255);
  int center[]={center_x,center_y};
  int half_head_len=Math.round(head_len*0.3);
  int mouth_len=head_len/8*3;
  int half_body_len_1=Math.round(body_len*0.3);
  int half_body_len_2=Math.round(body_len*0.5);
  //background
  stroke(255);
  rect(center[0]-head_len/2-half_head_len,center[1]-head_len-half_head_len,
        head_len+half_head_len+half_head_len,half_head_len+head_len+body_len+half_body_len_2*sqrt(2)*sqrt(3)/2);
  stroke(0);
  //head
  rect(center[0]-head_len/2,center[1]-head_len,head_len,head_len);
  quad(center[0]-head_len/2,center[1]-head_len
      ,center[0]+head_len/2,center[1]-head_len
      ,center[0]+head_len/2-half_head_len,center[1]-head_len-half_head_len
      ,center[0]-(head_len/2+half_head_len),center[1]-head_len-half_head_len);
  quad(center[0]-head_len/2,center[1]-head_len
      ,center[0]-head_len/2-half_head_len,center[1]-head_len-half_head_len
      ,center[0]-head_len/2-half_head_len,center[1]-half_head_len
      ,center[0]-head_len/2,center[1]);
  //glasses
  center[1]=center[1]-head_len/3*2;
  line(center[0]-head_len/2,center[1],center[0]-head_len/2+head_len/8,center[1]);
  rect(center[0]-head_len/2+head_len/8,center[1]-head_len/8,head_len/4+head_len/16,head_len/4);
  line(center[0]-head_len/16,center[1],center[0]+head_len/16,center[1]);
  line(center[0]+head_len/2,center[1],center[0]+head_len/2-head_len/8,center[1]);
  rect(center[0]+head_len/16,center[1]-head_len/8,head_len/4+head_len/16,head_len/4);
  line(center[0]-head_len/2,center[1],center[0]-head_len/2-half_head_len,center[1]-half_head_len);
  //mouth
  center[1]=center_y-head_len/3;
  line(center[0]-mouth_len/2,center[1],center[0]+mouth_len/2,center[1]);
  //body
  center[0]=center_x-half_head_len/2;
  center[1]=center_y;
  line(center[0],center[1],center[0],center[1]+body_len);
  if(arm_move){
    line(center[0],center[1]+body_len/3,center[0]+half_body_len_1,center[1]+body_len/3-half_body_len_1);
    line(center[0],center[1]+body_len/3,center[0]-half_body_len_1,center[1]+body_len/3-half_body_len_1);
  }else{
    line(center[0],center[1]+body_len/3,center[0]+half_body_len_1,center[1]+body_len/3+half_body_len_1);
    line(center[0],center[1]+body_len/3,center[0]-half_body_len_1,center[1]+body_len/3+half_body_len_1);
  }
  if(arm_move){
    line(center[0],center[1]+body_len,center[0]+half_body_len_2*sqrt(2)/2,center[1]+body_len+half_body_len_2*sqrt(2)*sqrt(3)/2);
    line(center[0],center[1]+body_len,center[0]-half_body_len_2*sqrt(2)/2,center[1]+body_len+half_body_len_2*sqrt(2)*sqrt(3)/2);
  }else{
    line(center[0],center[1]+body_len,center[0]+half_body_len_2,center[1]+body_len+half_body_len_2);
    line(center[0],center[1]+body_len,center[0]-half_body_len_2,center[1]+body_len+half_body_len_2);
  }
  fill(0);
}

void draw_human(){
  if(move){
    stay_count=0;
    move_count++;
    if(move_count==20){
      move_count=0;
      move_motion=!move_motion;
      if(face){
        draw_player_left(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
      }else{
        draw_player_right(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
      }
    }
  }else{
    move_count=0;
    stay_count++;
    if(stay_count==60){
      stay_count=0;
      if(Math.random()<0.2){
        face=!face;
        if(face){
          draw_player_left(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
        }else{
          draw_player_right(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
        }
      }
    }
  }
}

//count for animation
int move_count=0;
int stay_count=0;
//value for human
int human_len[]={50,30};
int human_loca[]={100,100};
boolean move=false;
boolean move_motion=false;
boolean face=false;//true:left, false:right


void setup(){
  size(480,480);
  frameRate(60);
  smooth();
  strokeJoin(ROUND);
  background(255);
  draw_player_left(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
}

void draw(){
  draw_human();
}
