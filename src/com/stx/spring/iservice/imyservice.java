package com.stx.spring.iservice;

import java.util.List;

import com.stx.spring.model.hk_cuisine;
import com.stx.spring.model.tal_comment;
import com.stx.spring.model.order;

public interface imyservice {
public void userorder(order to);//�ύ����
public List check(String user_name);//�û���ѯ����
public List checkq(String user_name);//�û���ѯ����
public void update(tal_comment tc);//�û�����  δ���
public int count(String user_name);//Ajax��ѯ������
public int count2(String user_name);//Ajax��ѯ������
public int count1(String user_name);//Ajax��ѯ������
public void cuisine(hk_cuisine hc);//�ҳ��ϴ���Ʒ
public void hcok(String user_name);//�ҳ��ӵ�
public List<hk_cuisine> selectcuisine(String hc_name);//�ҳ���ѯ��Ʒ
public List<hk_cuisine> user_look();//�û�ѡ��
public int count3(String hc_name);//��ѯ����
public List<order> sc4(String hc_name);//����
public String uporder(String order_id);//�ӵ�
public int count5(String hc_name);//����
public List<order> sc5(String hc_name);//����
public void sc6(String order_id);//��ʷ
public List<order> sc7(String hc_name);//��ʷ����
public void  sc8(String order_id);//ɾ����ʷ����


}
