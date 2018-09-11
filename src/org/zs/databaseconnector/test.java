package org.zs.databaseconnector;

import org.zs.databaseconnector.dao.imply.Courseimpl;
import org.zs.databaseconnector.dao.imply.Gover_teacherimpl;
import org.zs.databaseconnector.dao.imply.Scienceimpl;
import org.zs.databaseconnector.dao.imply.from_where_impl;
import org.zs.databaseconnector.vo.Course;
import org.zs.databaseconnector.vo.Gover_teacher;
import org.zs.databaseconnector.vo.Place;
import org.zs.databaseconnector.vo.Science;

import java.util.List;

public class test {

            public static void main(String args[]) {
//                from_where_impl t=new from_where_impl();
//                List<Place> t1=t.findbypname();
//                for(int i=0;i<t1.size();i++)
//                System.out.println(t1.get(i).getP_num()+" "+t1.get(i).getP_name());
                Courseimpl courseimpl= new Courseimpl();
                List<Course> list_tea=courseimpl.findbyTid("t0");
                System.out.println(list_tea.size());
            }
}
