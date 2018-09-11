package org.zs.databaseconnector.dao;

import org.zs.databaseconnector.vo.Gover_teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface Gover_teacherDao {
       public List<Gover_teacher> findByID(String g_id);
}
