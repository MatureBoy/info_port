package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Research;

import java.util.List;

//查看科研信息
public interface ResearchDao {
    List<Research> FindAll();
}
