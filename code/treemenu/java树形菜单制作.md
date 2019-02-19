

# java树形菜单制作

## 用到的技术

- SpringMVC
- Spring
- mybatis
- easyui

## 代码实现

- dto（适用于easyui的实体类）

```java
package com.grand.orgn.dto;

import java.util.HashMap;
import java.util.Map;


/**
 * 
 * @author jiajunkang
 * 适用于easyUI树形结构的实体类
 * @date 2019/2/19
 */
public class OrgnDto {
	private String id;
	private String text;
	private String iconCls;
	private int checked;
	private String parent_id;
	private Map<String,Object> attributes = new HashMap<String,Object>();
	private String state;
	
	public OrgnDto() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public int getChecked() {
		return checked;
	}

	public void setChecked(int checked) {
		this.checked = checked;
	}

	public String getParent_id() {
		return parent_id;
	}

	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}

	public Map<String, Object> getAttributes() {
		return attributes;
	}

	public void setAttributes(Map<String, Object> attributes) {
		this.attributes = attributes;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public OrgnDto(String id, String text, String iconCls, int checked,
			String parent_id, Map<String, Object> attributes, String state) {
		super();
		this.id = id;
		this.text = text;
		this.iconCls = iconCls;
		this.checked = checked;
		this.parent_id = parent_id;
		this.attributes = attributes;
		this.state = state;
	}
	
}

```

- 实体类（对应于数据库的实体）

```java
package com.grand.orgn.entity;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;

public class OrgnBasic implements Serializable{
	private Long id;

	private String orgnCode;//中心机构号

	private String fOrgnId;//父机构号

	private String orgnUnicode;//单位机构号

	private String orgnName;//机构名称

	private String orgnAbbrname;

	private String orgnDiv;

	private String orgnType;

	private String orgnLvl;

	private String orgnStat;

	private String zoneType;

	private String adminLevel;

	private String funcType;

	private String bankNo;

	private Date sdate;

	private Short state;

	private Date lastMod;

	private String leaf;

	private String orgnWdsign;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrgnCode() {
		return orgnCode;
	}

	public void setOrgnCode(String orgnCode) {
		this.orgnCode = orgnCode == null ? null : orgnCode.trim();
	}

	public String getfOrgnId() {
		return fOrgnId;
	}

	public void setfOrgnId(String fOrgnId) {
		this.fOrgnId = fOrgnId == null ? null : fOrgnId.trim();
	}

	public String getOrgnUnicode() {
		return orgnUnicode;
	}

	public void setOrgnUnicode(String orgnUnicode) {
		this.orgnUnicode = orgnUnicode == null ? null : orgnUnicode.trim();
	}

	public String getOrgnName() {
		return orgnName;
	}

	public void setOrgnName(String orgnName) {
		this.orgnName = orgnName == null ? null : orgnName.trim();
	}

	public String getOrgnAbbrname() {
		return orgnAbbrname;
	}

	public void setOrgnAbbrname(String orgnAbbrname) {
		this.orgnAbbrname = orgnAbbrname == null ? null : orgnAbbrname.trim();
	}

	public String getOrgnDiv() {
		return orgnDiv;
	}

	public void setOrgnDiv(String orgnDiv) {
		this.orgnDiv = orgnDiv == null ? null : orgnDiv.trim();
	}

	public String getOrgnType() {
		return orgnType;
	}

	public void setOrgnType(String orgnType) {
		this.orgnType = orgnType == null ? null : orgnType.trim();
	}

	public String getOrgnLvl() {
		return orgnLvl;
	}

	public void setOrgnLvl(String orgnLvl) {
		this.orgnLvl = orgnLvl == null ? null : orgnLvl.trim();
	}

	public String getOrgnStat() {
		return orgnStat;
	}

	public void setOrgnStat(String orgnStat) {
		this.orgnStat = orgnStat == null ? null : orgnStat.trim();
	}

	public String getZoneType() {
		return zoneType;
	}

	public void setZoneType(String zoneType) {
		this.zoneType = zoneType == null ? null : zoneType.trim();
	}

	public String getAdminLevel() {
		return adminLevel;
	}

	public void setAdminLevel(String adminLevel) {
		this.adminLevel = adminLevel == null ? null : adminLevel.trim();
	}

	public String getFuncType() {
		return funcType;
	}

	public void setFuncType(String funcType) {
		this.funcType = funcType == null ? null : funcType.trim();
	}

	public String getBankNo() {
		return bankNo;
	}

	public void setBankNo(String bankNo) {
		this.bankNo = bankNo == null ? null : bankNo.trim();
	}

	public Date getSdate() {
		return sdate;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	public Short getState() {
		return state;
	}

	public void setState(Short state) {
		this.state = state;
	}

	public Date getLastMod() {
		return lastMod;
	}

	public void setLastMod(Date lastMod) {
		this.lastMod = lastMod;
	}

	public String getLeaf() {
		return leaf;
	}

	public void setLeaf(String leaf) {
		this.leaf = leaf == null ? null : leaf.trim();
	}

	public String getOrgnWdsign() {
		return orgnWdsign;
	}

	public void setOrgnWdsign(String orgnWdsign) {
		this.orgnWdsign = orgnWdsign == null ? null : orgnWdsign.trim();
	}

	@Override
	public String toString() {
		return ReflectionToStringBuilder.toString(this);
	}
}

```

- service

```java
@Service
public class OrgnBasicServiceImpl {

	@Autowired
	private OrgnBasicMapper orgnBasicMapper;

	/**
	 * @author jiajunkang
	 * @description 查找机构
	 * @param request
	 * @return 返回easyui适用形式的实体类
	 */
	public List<OrgnDto> listOrgnTree(HttpServletRequest request) {
		OrgnBasicExample example = new OrgnBasicExample();
		List<OrgnBasic> orgns = orgnBasicMapper.selectByExample(example);
		List<OrgnDto> orgnDtos = new ArrayList<OrgnDto>();
		for (OrgnBasic orgn : orgns) {
			OrgnDto dto = new OrgnDto();
			dto.setId(orgn.getOrgnUnicode());
			dto.setText(orgn.getOrgnName());
			dto.setParent_id(orgn.getfOrgnId());
			if (getChildren(orgn.getOrgnUnicode()).size() > 0) {
				//还有下属机构，关闭状态
				dto.setState("closed");
			} else {
				dto.setState("open");
			}
			orgnDtos.add(dto);
		}
		System.out.println(orgnDtos);
		return orgnDtos;
	}

	/**
	 * @author jiajunkang
	 * @time 2019/2/20
	 * @param orgnUnicode
	 *            机构号
	 * @return 传入机构的子机构
	 * @description 根据机构号查找子机构
	 */
	public List<OrgnBasic> getChildren(String orgnUnicode) {
		OrgnBasicExample example = new OrgnBasicExample();
		example.createCriteria().andFOrgnIdEqualTo(orgnUnicode);
		List<OrgnBasic> orgns = orgnBasicMapper.selectByExample(example);
		return orgns;
	}

}

```

- controller

```java
@Autowired
private OrgnBasicServiceImpl orgnBasicServiceImpl;

@ResponseBody
@RequestMapping("listOrgnTree")
public List<OrgnDto> listOrgnTree(HttpServletRequest request) {
  return orgnBasicServiceImpl.listOrgnTree(request);
}
```

- jsp（easyui）

```javascript
<ul id="orgnTree">机构列表</ul>

$("#orgnTree").tree({
	url:"${pageContext.request.contextPath}/machine_update/listOrgnTree",
	animate:true,
	checkbox:true,
	loadFilter:function(rows){
		return convert(rows);
	}
});

/*easyui官方提供的处理json数据的方法*/
function convert(rows){
    function exists(rows, parent_id){
        for(var i=0; i<rows.length; i++){
            if (rows[i].id == parent_id) return true;
        }
        return false;
    }
    var nodes = [];
    for(var i=0; i<rows.length; i++){   // get the top level nodes
        var row = rows[i];
        if (!exists(rows, row.parent_id)){
            nodes.push({
                id:row.id,
                text:row.text,
                state:row.state
            });
        }
    }
    var toDo = [];
    for(var i=0; i<nodes.length; i++){
        toDo.push(nodes[i]);
    }
    while(toDo.length){
        var node = toDo.shift();    // the parent node
        for(var i=0; i<rows.length; i++){   // get the children nodes
            var row = rows[i];
            if (row.parent_id == node.id){
                var child = {id:row.id,text:row.text,state:row.state};
                if (node.children){
                    node.children.push(child);
                } else {
                    node.children = [child];
                }
                toDo.push(child);
            }
        }
    }
    return nodes;
}
```

- 效果图

![Image 1](D:\code\note\树形菜单\Image 1.png)

