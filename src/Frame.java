import javax.swing.*;

public class Frame extends JFrame {
   //타이틀이 없는 생성자
    public Frame(){
        super("영화티켓 예매창");
        setSize(800, 800);
        setVisible(true);
    }

    public static void main(String[] args){
        Frame frame = new Frame();
        //종료 이벤트
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

}
