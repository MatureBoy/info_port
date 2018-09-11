package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Award;

import java.util.List;

public interface AwardDao {
    List<Award> FindAward(String class_id);
}
