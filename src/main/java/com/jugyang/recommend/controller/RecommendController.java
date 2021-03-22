package com.jugyang.recommend.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jugyang.recommend.Repository.Recommend_info_Repository;
import com.jugyang.recommend.Repository.Scholar_info_Repository;
import com.jugyang.recommend.Repository.Science_info_Repository;
import com.jugyang.recommend.dao.RecommendInfoMapper;
import com.jugyang.recommend.dao.ScholarInfoMapper;
import com.jugyang.recommend.dao.ScienceInfoMapper;
import com.jugyang.recommend.entity.Demand;
import com.jugyang.recommend.entity.Scholar_info;
import com.jugyang.recommend.entity.Science_information;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class RecommendController {

    @Autowired
    private Scholar_info_Repository scholar_info_Repository;

    @Autowired
    private ScholarInfoMapper scholarInfoMapper;

    @Autowired
    private Recommend_info_Repository recommend_info_Repository;

    @Autowired
    private RecommendInfoMapper recommendInfoMapper;

    @Autowired
    private Science_info_Repository science_info_Repository;

    @Autowired
    private ScienceInfoMapper scienceInfoMapper;

    @RequestMapping("/recommend")
    public String testFreemarker(ModelMap modelMap){
        modelMap.addAttribute("msg", "hello dalaoyang");
        return "recommend";
    }

    @GetMapping("/index")
    public String test(Model model,
                       @RequestParam(defaultValue = "1") int pageNo,
                       @RequestParam(defaultValue = "6") int pageSize){
        PageHelper.startPage(pageNo, pageSize);
        List<Scholar_info> scholar_infoList = scholarInfoMapper.selectScholarInfoList();
        PageInfo<Scholar_info> pageInfo = new PageInfo<Scholar_info>(scholar_infoList);
        model.addAttribute("experts_list", pageInfo);
        return "index_show_experts";
    }

    @GetMapping("/search")
    public String search(@RequestParam String name, Model model){
        List<Scholar_info> scholar_info_list = scholarInfoMapper.searchScholar_info(name);
        model.addAttribute("search_scholar_info_list", scholar_info_list);
        model.addAttribute("s_name", name);
        return "search";
    }

    @GetMapping("/info")
    public String info(@RequestParam String s_id, Model model){
        int scholar_id = Integer.parseInt(s_id);
        Scholar_info schoral_info = scholarInfoMapper.getScholar_info(scholar_id);
        Science_information sci_info = scienceInfoMapper.getScienceInformation(scholar_id);
        model.addAttribute("sch_name", schoral_info.getScholar_name());
        model.addAttribute("sch_description", schoral_info.getScholar_description());
        model.addAttribute("sch_needs_list", schoral_info.getRecommend_bussiness_needs_list());
        model.addAttribute("sch_information_list", schoral_info.getRecommend_science_information_list());
        model.addAttribute("sch_institution", schoral_info.getScholar_institution());
        model.addAttribute("sch_post", schoral_info.getScholar_post());
        /**
         * sch_needs_list 1,2,3,4,5
         */
        String str1 = schoral_info.getRecommend_bussiness_needs_list();
        String[] temp1;
        String delimeter1 = "\\,";  // 指定分割字符， . 号需要转义
        temp1 = str1.split(delimeter1); // 分割字符串


        List<Demand> myDemand = new ArrayList<Demand>();
        for(String id :  temp1){
            int int_id = Integer.parseInt(id);
            Demand demand = recommendInfoMapper.getRecommandHy(int_id);
            myDemand.add(demand);
        }
        Demand s = myDemand.get(0);
        System.out.println(s.getId()+"  "+s.getDemand_detail()+"  "+s.getDemand_title());

        model.addAttribute("myDemand_list", myDemand);
        /**
         * sch_information_list 1,2,3,4,5
         */
        String str2 = schoral_info.getRecommend_science_information_list();
        String[] temp2;
        temp2 = str2.split(delimeter1);

        List<Science_information> myScience_information = new ArrayList<Science_information>();
        for(String id : temp2){
            int Science_id = Integer.parseInt(id);
            Science_information science =scienceInfoMapper.getScienceInformation(Science_id);
            myScience_information.add(science);
        }
        model.addAttribute("myScience_Info", myScience_information);
        return "recommend";
    }

}
