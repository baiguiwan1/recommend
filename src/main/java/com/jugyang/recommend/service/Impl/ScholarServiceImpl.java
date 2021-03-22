package com.jugyang.recommend.service.Impl;

import com.jugyang.recommend.Repository.Scholar_info_Repository;
import com.jugyang.recommend.dao.ExpertMapper;
import com.jugyang.recommend.dao.ScholarInfoMapper;
import com.jugyang.recommend.entity.Expert;
import com.jugyang.recommend.entity.Scholar_info;
import com.jugyang.recommend.enums.ResponseEnum;
import com.jugyang.recommend.service.IScholarService;
import com.jugyang.recommend.vo.ResponseVo;
import net.bytebuddy.asm.Advice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.nio.charset.StandardCharsets;

@Service
public class ScholarServiceImpl implements IScholarService
{
    @Autowired
    private ScholarInfoMapper scholarInfoMapper;

    @Autowired
    private Scholar_info_Repository scholar_info_repository;

    @Override
    public ResponseVo<Scholar_info> register(String nickname, String password, String researchFields, int id) {
        int countByUsername = scholarInfoMapper.countByNickname(nickname);
        if (countByUsername > 0) {
            return ResponseVo.error(ResponseEnum.USERNAME_EXIST);
        }
        int resultCount = scholarInfoMapper.updateScholar_info(nickname, DigestUtils.md5DigestAsHex(password.getBytes(StandardCharsets.UTF_8)), researchFields, id);
        if (resultCount == 0) {
            return ResponseVo.error(ResponseEnum.ERROR);
        }
        return ResponseVo.success();
    }

    @Override
    public ResponseVo<Scholar_info> newRegister(String nickname, String scholar_name,String password, String researchFields,String institution, String scholar_post) {
        int countByUsername = scholarInfoMapper.countByNickname(nickname);
        if (countByUsername > 0) {
            return ResponseVo.error(ResponseEnum.USERNAME_EXIST);
        }
        //int resultCount = scholarInfoMapper.insertScholar_info(nickname, scholar_name, DigestUtils.md5DigestAsHex(password.getBytes(StandardCharsets.UTF_8)), researchFields, institution, scholar_post);
        Scholar_info scholar_info=new Scholar_info(scholar_name,nickname,
                DigestUtils.md5DigestAsHex(password.getBytes(StandardCharsets.UTF_8)),institution,scholar_post,researchFields);

        int resultCount = scholarInfoMapper.insertScholar_info(scholar_info);
        if (resultCount == 0) {
            return ResponseVo.error(ResponseEnum.ERROR);
        }
        return ResponseVo.success();
    }


    @Override
    public ResponseVo<Scholar_info> login_by_nickname(String name, String password) {
        Scholar_info scholar_info = scholarInfoMapper.getScholar_infoByNickname(name);

        if (scholar_info == null) {
            return ResponseVo.error(ResponseEnum.USERNAME_OR_PASSWORD_ERROR);
        }

        if (!scholar_info.getPassword().equalsIgnoreCase(
                DigestUtils.md5DigestAsHex(password.getBytes(StandardCharsets.UTF_8))
        )) {
            return ResponseVo.error(ResponseEnum.USERNAME_OR_PASSWORD_ERROR);
        }

        scholar_info.setPassword("");
        return ResponseVo.success(scholar_info);
    }


}
