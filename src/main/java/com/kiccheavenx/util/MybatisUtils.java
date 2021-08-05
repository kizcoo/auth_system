package com.kiccheavenx.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MybatisUtils {

    private static SqlSessionFactory sqlSessionFactory;

    static {
        try{
            // 使用mybatis第一步：获取sqlSessionFactory
            String resource = "mybatis/mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

            //初始化日志
            InitLogRecord.initLog();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // 提供静态方法获取sqlSession
    public static SqlSession getSqlSession(){
        return sqlSessionFactory.openSession();
    }
}
