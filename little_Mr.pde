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
    if(move_count==Math.round(fps*15/60)){
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
    if(stay_count==fps){
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
int target_count=0;
int target_R=20;
int fps=60;
//value for human
int human_move_range[]={480,480};
int human_len[]={50,30};
int human_loca[]={100,100};
boolean move=false;
boolean move_motion=false;
boolean face=true;//true:left, false:right
//value for mouse control
boolean hold=false;
boolean go=false;
int target[]={0,0};


void setup(){
  //init game
  size(human_move_range[0],human_move_range[1]);
  frameRate(fps);
  smooth();
  strokeJoin(ROUND);
  background(255);
  //init human
  draw_player_left(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
}

void draw(){
  check_go();
  check_mouse();
  draw_human();
  draw_target();
}

void draw_target(){
  if(go){
    target_count++;
    if(target_count==3){
      target_count=0;
      target_R--;
      if(target_R==0){
        target_R=20;
      }
    }
      stroke(255);
      fill(255);
      rect(target[0]-10,target[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2-10,20,20);
      stroke(0);
      fill(0);
      stroke(255,0,0);
      fill(255);
      ellipse(target[0],target[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2,target_R,target_R);
      fill(0);
      stroke(0);
  }
}

void mouseClicked(){
  if(((mouseX>=human_loca[0]-human_len[0]/2) &&
         (mouseX<=human_loca[0]+human_len[0]/2+Math.round(human_len[0]*0.3)) &&
         (mouseY>=human_loca[1]-human_len[0]-Math.round(human_len[0]*0.3)) &&
         (mouseY<=human_loca[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2) &&
         face) ||
         ((mouseX>=human_loca[0]-human_len[0]/2-Math.round(human_len[0]*0.3)) &&
          (mouseX<=human_loca[0]+human_len[0]/2) &&
          (mouseY>=human_loca[1]-human_len[0]-Math.round(human_len[0]*0.3)) &&
          (mouseY<=human_loca[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2) &&
          !face)){
            ;
          }else /*if(mouseY>=human_len[0]+Math.round(human_len[0]*0.3) &&
           mouseY<=human_move_range[1] &&
           mouseX>=human_len[0]/2 &&
           mouseX<=human_move_range[0]-human_len[0]/2)*/{
             go=true;
             if(target[0]==0 && target[1]==0){
               target[0]=mouseX;
               target[1]=Math.round(mouseY-human_len[1]-Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2);
             }else{
               stroke(255);
               fill(255);
               rect(target[0]-10,target[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2-10,20,20);
               stroke(0);
               fill(0);
               target[0]=mouseX;
               target[1]=Math.round(mouseY-human_len[1]-Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2);
             }
          }
}


void check_mouse(){
  if(mousePressed){
    if(hold){
      move=true;
      if(human_loca[0]!=mouseX || human_loca[1]!=mouseY){
        if(human_loca[0]-mouseX>0){
          face=true;
        }else{
          face=false;
        }
        stroke(255);
        fill(255);
        rect(human_loca[0]-human_len[0]/2-Math.round(human_len[0]*0.3),human_loca[1]-human_len[0]-Math.round(human_len[0]*0.3),
        human_len[0]+Math.round(human_len[0]*0.3)+Math.round(human_len[0]*0.3),Math.round(human_len[0]*0.3)+human_len[0]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2);
        fill(0);
        stroke(0);
        if(mouseY>=human_len[0]+Math.round(human_len[0]*0.3) &&
           mouseY<=human_move_range[1]-human_len[1]-Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2 &&
           mouseX>=human_len[0]/2 &&
           mouseX<=human_move_range[0]-human_len[0]/2){
          human_loca[0]=mouseX;
          human_loca[1]=mouseY;
        }else{
          if(mouseX<human_len[0]/2){
            human_loca[0]=human_len[0]/2;
          }
          if(mouseX>human_move_range[0]-human_len[0]/2){
            human_loca[0]=human_move_range[0]-human_len[0]/2;
          }
          if(mouseY<human_len[0]+Math.round(human_len[0]*0.3)){
            human_loca[1]=human_len[0]+Math.round(human_len[0]*0.3);
          }
          if(mouseY>human_move_range[1]-human_len[1]-Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2){
            human_loca[1]=Math.round(human_move_range[1]-human_len[1]-Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2);
          }
        }
      }
    }else{
      if(((mouseX>=human_loca[0]-human_len[0]/2) &&
         (mouseX<=human_loca[0]+human_len[0]/2+Math.round(human_len[0]*0.3)) &&
         (mouseY>=human_loca[1]-human_len[0]-Math.round(human_len[0]*0.3)) &&
         (mouseY<=human_loca[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2) &&
         face) ||
         ((mouseX>=human_loca[0]-human_len[0]/2-Math.round(human_len[0]*0.3)) &&
          (mouseX<=human_loca[0]+human_len[0]/2) &&
          (mouseY>=human_loca[1]-human_len[0]-Math.round(human_len[0]*0.3)) &&
          (mouseY<=human_loca[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2) &&
          !face)){
           hold=true;
       }else{
         hold=false;
       }
    }
  }else{
    hold=false;
    if(go){
      move=true;
    }else{
      move=false;
      move_motion=false;
    }
  }
  if(face){
      draw_player_left(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
   }else{
      draw_player_right(human_loca[0],human_loca[1],human_len[0],human_len[1],move_motion);
   }
   draw_target();
}

void check_go(){
  if(go){
    stroke(255);
    fill(255);
    rect(human_loca[0]-human_len[0]/2-Math.round(human_len[0]*0.3),human_loca[1]-human_len[0]-Math.round(human_len[0]*0.3),
    human_len[0]+Math.round(human_len[0]*0.3)+Math.round(human_len[0]*0.3),Math.round(human_len[0]*0.3)+human_len[0]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2);
    fill(0);
    stroke(0);
    if(target[0]-human_loca[0]<0){
      face=true;
    }else{
      face=false;
    }
    human_loca[0]+=Math.round((target[0]-human_loca[0])*0.05);
    human_loca[1]+=Math.round((target[1]-human_loca[1])*0.05);
    if(Math.round((target[0]-human_loca[0])*0.05)==0 && Math.round((target[1]-human_loca[1])*0.05)==0){
      go=false;
      target_R=20;
      target_count=0;
      stroke(255);
      fill(255);
      rect(target[0]-10,target[1]+human_len[1]+Math.round(human_len[1]*0.5)*sqrt(2)*sqrt(3)/2-10,20,20);
      stroke(0);
      fill(0);
      target[0]=0;
      target[1]=0;
    }
    move=true;
  }
}

