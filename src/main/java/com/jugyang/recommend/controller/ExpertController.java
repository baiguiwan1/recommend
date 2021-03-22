package com.jugyang.recommend.controller;

import com.jugyang.recommend.dao.CategoryInfoMapper;
import com.jugyang.recommend.dao.RecommendInfoMapper;
import com.jugyang.recommend.dao.ScholarInfoMapper;
import com.jugyang.recommend.dao.ScienceInfoMapper;
import com.jugyang.recommend.entity.*;
import com.jugyang.recommend.service.IScholarService;
import com.jugyang.recommend.vo.ResponseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ExpertController {

    @Autowired
    private IScholarService scholarService;

    @Autowired
    private CategoryInfoMapper categoryInfoMapper;

//    @Autowired
//    private  Scholar_info_Repository scholar_info_repository;
//
//    @Autowired
//    private Recommend_info_Repository recommend_info_repository;
//
//    @Autowired
//    private Science_info_Repository science_info_repository;

    @Autowired
    private  ScholarInfoMapper scholarInfoMapper;

    @Autowired
    private RecommendInfoMapper recommendInfoMapper;

    @Autowired
    private ScienceInfoMapper scienceInfoMapper;


    @GetMapping("/myregister")
    public String myregister(@RequestParam String s_id, Model model, HttpSession session){
        int scholar_id = Integer.parseInt(s_id);
        Scholar_info schoral_info = scholarInfoMapper.getScholar_info(scholar_id);
        session.setAttribute("scholar_info", schoral_info);
        return "redirect:/register";
    }


    @GetMapping("/anaylse")
    public String demandAnaylse(){
        return "recommend";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "index";
    }
    @GetMapping("/register")
    public String register(){
        return "register";
    }
    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @PostMapping("/expert/register")
    public String expertregister(@RequestParam("exName") String exName,
                                 @RequestParam("scholar_name") String scholar_name,
                                 @RequestParam("password") String password,
                                 @RequestParam("researchFields") String researchFields,
                                  @RequestParam("institution") String institution,
                                  @RequestParam("scholar_post") String scholar_post,
                                  HttpSession session){

        ResponseVo<Scholar_info> scholarResponseVo;

        Scholar_info scholar_info = (Scholar_info) session.getAttribute("scholar_info");
        if(scholar_info != null) {
            System.out.println("=============");
            System.out.println(scholar_info.getScholar_id());
            scholarResponseVo = scholarService.register(exName, password, researchFields, scholar_info.getScholar_id());
        }
        else {
            scholarResponseVo = scholarService.newRegister(exName, scholar_name, password, researchFields, institution, scholar_post);
        }

        /**
         * JuGyang
         * 2020.7.26
         * 运行python代码，填充recommend_bussiness_needs_list和science_info_list
         */
        Scholar_info scholar_info_by_nickname = scholarInfoMapper.getScholar_infoByNickname(exName);





        System.out.println("插入数据..打印..city....researchFields..msg..statecode");
        //System.out.println(city);
        System.out.println(researchFields);
        System.out.println(scholarResponseVo.getMsg());

        Integer statecode=scholarResponseVo.getStatus();
        String  msg=scholarResponseVo.getMsg();
        System.out.println(statecode);
        if(statecode==0){
           // Scholar_info scholar_info1 = scholarResponseVo.getData();
            System.out.println("========");
            System.out.println(scholar_info_by_nickname.getScholar_id());
            if(scholar_info_by_nickname.getScholar_description()==null || scholar_info_by_nickname.getScholar_description().isEmpty()){
                String fieldsId=scholar_info_by_nickname.getScholar_fields().replace(',',' ');
                String[] reseachers=fieldsId.split(" ");
                String description="研究领域：";
                for(int i=0;i<reseachers.length;i++){
                    Integer category_id= new Integer(reseachers[i]);
                    String temp=categoryInfoMapper.selectCategoryById(category_id);
                    description+=temp;
                    if(i!=reseachers.length-1){
                        description+=',';
                    }
                }
                scholarInfoMapper.updateScholar_Description(description,scholar_info_by_nickname.getScholar_id());

                /**
                 * JuGyang
                 * 2020.7.26
                 * 运行python代码，填充recommend_bussiness_needs_list和science_info_list
                 */

                try {
                    String[] args = new String[] {"python3",
                            "/Users/jugyang/Documents/Recommend_Bussiness_Needs/Code/main.py",
                            String.valueOf(scholar_info_by_nickname.getScholar_id())};
                    Process proc = Runtime.getRuntime().exec(args);
//                    BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(),"UTF-8"));
//                    String line = null;
//                    while ((line = in.readLine()) != null) {
//                        System.out.println(line);
//                    }
//                    in.close();
//                    int re = proc.waitFor();
//                    System.out.println(re);
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("调用python脚本出错： " + e.getMessage());
                }

            }
            return "redirect:/login";
        }else{
            //map.put("msg",msg);
            session.setAttribute("registermsg",msg);
            //request.setAttribute("msg",msg);
            return "redirect:/register";
        }
    }

    /**
     * 老学者注册
     * @param exName
     * @param password
     * @param researchFields
     * @param session
     * @return
     */
    @PostMapping("/expert/expertRegister")
    public String expertRegister(@RequestParam("exName") String exName,
                                 @RequestParam("password") String password,
                                 @RequestParam("researchFields") String researchFields,
                                 HttpSession session){
        Scholar_info scholar_info = (Scholar_info) session.getAttribute("scholar_info");
        ResponseVo<Scholar_info> scholarResponseVo = scholarService.register(exName, password, researchFields, scholar_info.getScholar_id());;


//        if(scholar_info != null) {
//            System.out.println("=============");
//            System.out.println(scholar_info.getScholar_id());
//            scholarResponseVo =
//        }

        /**
         * JuGyang
         * 2020.7.26
         * 运行python代码，填充recommend_bussiness_needs_list和science_info_list
         */
        Scholar_info scholar_info_by_nickname = scholarInfoMapper.getScholar_infoByNickname(exName);

        System.out.println("插入数据..打印..city....researchFields..msg..statecode");
        System.out.println(researchFields);
        System.out.println(scholarResponseVo.getMsg());

        Integer statecode=scholarResponseVo.getStatus();
        String  msg=scholarResponseVo.getMsg();
        System.out.println(statecode);
        if(statecode==0){
            // Scholar_info scholar_info1 = scholarResponseVo.getData();
            System.out.println("========");
            System.out.println(scholar_info_by_nickname.getScholar_id());
            if(scholar_info_by_nickname.getScholar_description()==null || scholar_info_by_nickname.getScholar_description().isEmpty()){
                String fieldsId=scholar_info_by_nickname.getScholar_fields().replace(',',' ');
                String[] reseachers=fieldsId.split(" ");
                String description="研究领域：";
                for(int i=0;i<reseachers.length;i++){
                    Integer category_id= new Integer(reseachers[i]);
                    String temp=categoryInfoMapper.selectCategoryById(category_id);
                    description+=temp;
                    if(i!=reseachers.length-1){
                        description+=',';
                    }
                }
                scholarInfoMapper.updateScholar_Description(description,scholar_info_by_nickname.getScholar_id());

                /**
                 * JuGyang
                 * 2020.7.26
                 * 运行python代码，填充recommend_bussiness_needs_list和science_info_list
                 */

                try {
                    String[] args = new String[] {"python3",
                            "/Users/jugyang/Documents/Recommend_Bussiness_Needs/Code/main.py",
                            String.valueOf(scholar_info_by_nickname.getScholar_id())};
                    Process proc = Runtime.getRuntime().exec(args);
//                    BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(),"UTF-8"));
//                    String line = null;
//                    while ((line = in.readLine()) != null) {
//                        System.out.println(line);
//                    }
//                    in.close();
//                    int re = proc.waitFor();
//                    System.out.println(re);
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("调用python脚本出错： " + e.getMessage());
                }

            }
            else {
                System.out.println("===+++" + scholar_info_by_nickname.getScholar_id());
                try {
                    String[] args = new String[] {"python3",
                            "/Users/jugyang/Documents/Recommend_Bussiness_Needs/Code/main.py",
                            String.valueOf(scholar_info_by_nickname.getScholar_id())};
                    Process proc = Runtime.getRuntime().exec(args);
//                    BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(),"UTF-8"));
//                    String line = null;
//                    while ((line = in.readLine()) != null) {
//                        System.out.println(line);
//                    }
//                    in.close();
//                    int re = proc.waitFor();
//                    System.out.println(re);
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("调用python脚本出错： " + e.getMessage());
                }
            }
            return "redirect:/login";
        }
        else{
            session.setAttribute("registermsg",msg);
            //request.setAttribute("msg",msg);
            return "redirect:/register";
        }
    }


//    @GetMapping("/expert/show")
//    public String showExpertRecommend(@RequestParam String s_id, HttpSession session){
//        int scholar_id = Integer.parseInt(s_id);
//        Scholar_info scholar_info = scholarInfoMapper.getScholar_info(scholar_id);
//        session.setAttribute("loginExpert",scholar_info);
//
//        String reseacherFieldsId=scholar_info.getScholar_fields().replace(',',' ');
//        String[] reseachers=reseacherFieldsId.split(" ");
//        for(int i=0;i<reseachers.length;i++){
//            System.out.println(reseachers[i]);
//        }
//
//        List<CategoryInfo> categoryInfoList=new ArrayList<>();
//        for(int i=0;i<reseachers.length;i++){
//            Integer category_id= new Integer(reseachers[i]);
//            CategoryInfo categoryInfo=categoryInfoMapper.selectByPrimaryKey(category_id);
//            categoryInfoList.add(categoryInfo);
//        }
//        session.setAttribute("categoryInfoList",categoryInfoList);
//
//        List<String[]> themes_list=new ArrayList<>();
//        Integer[] themes_length = new Integer[categoryInfoList.size()];
//        for(int i=0;i<categoryInfoList.size();i++){
//            String second_theme=categoryInfoList.get(i).getSecondTheme().replace('|',' ');
//            String[] themes=second_theme.split(" ");
//            themes_list.add(themes);
//            for(int j=0;j<themes.length;j++){
//                System.out.println(themes[j]);
//            }
//            themes_length[i]=themes.length-1;
//        }
//
//        session.setAttribute("themes_length",themes_length);
//        session.setAttribute("themes_list",themes_list);
//
//
//        /**
//         * JuGyang
//         */
//        session.setAttribute("sch_name", scholar_info.getScholar_name());
//        session.setAttribute("sch_description", scholar_info.getScholar_description());
//        session.setAttribute("sch_needs_list", scholar_info.getRecommend_bussiness_needs_list());
//        session.setAttribute("sch_information_list", scholar_info.getRecommend_science_information_list());
//        session.setAttribute("sch_institution", scholar_info.getScholar_institution());
//        session.setAttribute("sch_post", scholar_info.getScholar_post());
//
//        /**
//         * sch_needs_list 1,2,3,4,5
//         */
//        String str1 = scholar_info.getRecommend_bussiness_needs_list();
//        String[] temp1;
//        String delimeter1 = "\\,";  // 指定分割字符， . 号需要转义
//        List<Demand> myDemand= new ArrayList<Demand>();;
//        if(str1!=null){
//            temp1 = str1.split(delimeter1); // 分割字符串
//            for(String id :  temp1){
//                int int_id = Integer.parseInt(id);
//                Demand demand = recommendInfoMapper.getRecommandHy(int_id);
//                myDemand.add(demand);
//            }
//        }
//        if(myDemand.size()!=0){
//            Demand s = myDemand.get(0);
//            System.out.println(s.getId()+"  "+s.getDemand_detail()+"  "+s.getDemand_title());
//        }
//
//        session.setAttribute("myDemand_list", myDemand);
//        /**
//         * sch_information_list 1,2,3,4,5
//         */
//        String str2 = scholar_info.getRecommend_science_information_list();
//        String[] temp2;
//        List<Science_information> myScience_information = new ArrayList<Science_information>();
//        if (str2 != null) {
//            temp2 = str2.split(delimeter1);
//            for(String id : temp2){
//                int Science_id = Integer.parseInt(id);
//                Science_information science = scienceInfoMapper.getScienceInformation(Science_id);
//                myScience_information.add(science);
//            }
//        }
//
//        session.setAttribute("myScience_Info", myScience_information);
//
//        return "redirect:/anaylse";
//    }


    @PostMapping("/expert/login")
    public String expertlogin(@RequestParam("exName") String exName,
                              @RequestParam("password") String password,
                              HttpSession session, Model model) throws IOException {

        ResponseVo<Scholar_info> scholarInfoResponseVo = scholarService.login_by_nickname(exName,password);

        System.out.println("查询检测数据..打印..data..msg..statecode");
        System.out.println(scholarInfoResponseVo.getData());
        System.out.println(scholarInfoResponseVo.getMsg());

        Integer statecode=scholarInfoResponseVo.getStatus();
        String  msg=scholarInfoResponseVo.getMsg();
        System.out.println(statecode);
        if(statecode==0){
            Scholar_info scholar_info=scholarInfoResponseVo.getData();
            session.setAttribute("loginExpert",scholar_info);

            String reseacherFieldsId=scholar_info.getScholar_fields().replace(',',' ');
            String[] reseachers=reseacherFieldsId.split(" ");
            for(int i=0;i<reseachers.length;i++){
                System.out.println(reseachers[i]);
            }

            List<CategoryInfo> categoryInfoList=new ArrayList<>();
            for(int i=0;i<reseachers.length;i++){
                Integer category_id= new Integer(reseachers[i]);
                CategoryInfo categoryInfo=categoryInfoMapper.selectByPrimaryKey(category_id);
                categoryInfoList.add(categoryInfo);
            }
            session.setAttribute("categoryInfoList",categoryInfoList);

            List<String[]> themes_list=new ArrayList<>();
            Integer[] themes_length = new Integer[categoryInfoList.size()];
            for(int i=0;i<categoryInfoList.size();i++){
                String second_theme=categoryInfoList.get(i).getSecondTheme().replace('|',' ');
                String[] themes=second_theme.split(" ");
                themes_list.add(themes);
                for(int j=0;j<themes.length;j++){
                    System.out.println(themes[j]);
                }
                themes_length[i]=themes.length-1;
            }

            session.setAttribute("themes_length",themes_length);
            session.setAttribute("themes_list",themes_list);


            /**
             * JuGyang
             */
            session.setAttribute("sch_name", scholar_info.getScholar_name());
            session.setAttribute("sch_description", scholar_info.getScholar_description());
            session.setAttribute("sch_needs_list", scholar_info.getRecommend_bussiness_needs_list());
            session.setAttribute("sch_information_list", scholar_info.getRecommend_science_information_list());
            session.setAttribute("sch_institution", scholar_info.getScholar_institution());
            session.setAttribute("sch_post", scholar_info.getScholar_post());

            /**
             * sch_needs_list 1,2,3,4,5
             */
            String str1 = scholar_info.getRecommend_bussiness_needs_list();
            String[] temp1;
            String delimeter1 = "\\,";  // 指定分割字符， . 号需要转义
            List<Demand> myDemand= new ArrayList<Demand>();;
            if(str1!=null){
                temp1 = str1.split(delimeter1); // 分割字符串
                for(String id :  temp1){
                    int int_id = Integer.parseInt(id);
                    Demand demand = recommendInfoMapper.getRecommandHy(int_id);
                    myDemand.add(demand);
                }
            }
            if(myDemand.size()!=0){
                Demand s = myDemand.get(0);
                System.out.println(s.getId()+"  "+s.getDemand_detail()+"  "+s.getDemand_title());
            }

            session.setAttribute("myDemand_list", myDemand);
            /**
             * sch_information_list 1,2,3,4,5
             */
            String str2 = scholar_info.getRecommend_science_information_list();
            String[] temp2;
            List<Science_information> myScience_information = new ArrayList<Science_information>();
            if (str2 != null) {
                temp2 = str2.split(delimeter1);
                for(String id : temp2){
                    int Science_id = Integer.parseInt(id);
                    Science_information science = scienceInfoMapper.getScienceInformation(Science_id);
                    myScience_information.add(science);
                }
            }

            session.setAttribute("myScience_Info", myScience_information);

            return "redirect:/anaylse";
        }else{
            //map.put("msg",msg);
            session.setAttribute("loginmsg",msg);
            //request.setAttribute("msg",msg);
            return "redirect:/login";
        }

    }
}
