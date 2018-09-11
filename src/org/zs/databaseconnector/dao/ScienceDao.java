package org.zs.databaseconnector.dao;

import org.zs.databaseconnector.vo.Science;

import java.util.List;

public interface ScienceDao {
   public List<Science> findbySid();
}
