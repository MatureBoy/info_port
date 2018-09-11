package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Fee;

import java.util.List;

public interface FeeDao {
    List<Fee> FindFee(String class_id);
}
