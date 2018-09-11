package org.xh.AdminTest.myInteface;

import org.xh.AdminTest.vo.User;

public interface userCheck {
    boolean  checkUser(User user);
    String checkIdentity(User user);
}
