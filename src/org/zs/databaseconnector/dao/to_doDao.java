package org.zs.databaseconnector.dao;

import org.zs.databaseconnector.vo.to_do_list;

import java.util.List;

public interface to_doDao {

   public List<to_do_list> findbydo(String t_id);
}
