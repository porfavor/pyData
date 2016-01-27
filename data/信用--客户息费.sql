--begin 20100527 fis-197 Galaxy wangzhiheng 在客户查询中增加融资融券查询(客户查询F8)
--fis-1086,liny,20110303,完善客户息费查询
use run
go
exec nb_add_querybase 153104, 'title="客户息费查询" batchparamname="posstr" batchfields="posstr" batchnumber="100" fixcols="0" groupfields="" groupfieldsuse="" sortfields="" hislbmid="" sumlbmid="" begintime1="" endtime1="" begintime2="" endtime2="" begintime3="" endtime3="" displayrecno="" hidedetail="1" refresh="0" rptfile="" pagetype="9" pagewidth="" pageheight="" leftmargin="100" rightmargin="100" topmargin="150" bottommargin="200" printdirection="0" pagealign="0" pageheadprint="1" pageheadfont="宋体" pageheadfontsize="16" pageheadbold="0" pageheaditalic="0" pagefootprint="1" pagefootfont="宋体" pagefootfontsize="16" pagefootbold="0" pagefootitalic="0" headprint="1" headfont="宋体" headfontsize="30" headbold="1" headitalic="0" subheadprint="1" subheadfont="宋体" subheadfontsize="16" subheadbold="1" subheaditalic="0" datatitleprint="1" datatitlefont="宋体" datatitlefontsize="18" datatitlebold="1" datatitleitalic="0" detailprint="1" detailfont="楷体_GB2312" detailfontsize="16" detailbold="0" detailitalic="0"'
-------
--fis-528, chenws, 20100902, 把机构编码改为单选
exec nb_add_queryparam 153104, 'paramname="orgid" controlname="TCSBranchEdit" controlcaption="机构编码" controlwidth="100" controltype="btOrg" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="@ct_orgid" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="o" moreflag="0" logicsymbol="or"'
--exec nb_add_queryparam 153104, 'paramname="creditdirect" controlname="TCSDataPopCheckEdit" controlcaption="信用方向" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="1" editstyle="" paramvalue="" paramdict="Brzrqlx" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
--exec nb_add_queryparam 153104, 'paramname="lifestatus" controlname="TCSDataPopCheckEdit" controlcaption="信用状态" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="1" editstyle="" paramvalue="" paramdict="Exyhyzt" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 153104, 'paramname="custid" controlname="" controlcaption="客户代码" controlwidth="100" controltype="ctCustid" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="@ct_custid" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 153104, 'paramname="fundid" controlname="TCSCustomerEdit" controlcaption="资金帐号" controlwidth="100" controltype="ctFundid" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 153104, 'paramname="posstr" controlname="" controlcaption="定 位 串" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 153104, 'paramname="qrynum" controlname="" controlcaption="查询条数" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
-------
exec nb_add_queryfield 153104, 'fieldname="serverid" fieldcaption="服务器号" fieldtype="ktInteger" fieldsize="0" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="orgid" fieldcaption="机构编码" fieldtype="ktString" fieldsize="4" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtStaticText" fieldsumvalue="合计" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="10" printwidth="10" detailfield="0" detailcolno="1"'
--fis-1140, chenws, 20110503
exec nb_add_queryfield 153104, 'fieldname="orgidname" fieldcaption="机构名称" fieldtype="ktString" fieldsize="20" fielddeclen="0" fielddict="_Org" fieldkey="orgid" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="10" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="custid" fieldcaption="客户代码" fieldtype="ktInt64" fieldsize="0" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="12" detailfield="0" detailcolno="1"'

exec nb_add_queryfield 153104, 'fieldname="fundid" fieldcaption="资金帐号" fieldtype="ktInt64" fieldsize="0" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="12" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="fundname" fieldcaption="客户姓名" fieldtype="ktString" fieldsize="16" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="10" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="moneytype" fieldcaption="货币代码" fieldtype="ktString" fieldsize="1" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="moneyname" fieldcaption="币  种" fieldtype="ktString" fieldsize="20" fielddeclen="0" fielddict="Djsbz" fieldkey="moneytype" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="6" printwidth="6" detailfield="0" detailcolno="1"'
--fis-1086,liny,20110304,融资息费
exec nb_add_queryfield 153104, 'fieldname="fee_rz" fieldcaption="融资利息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="20" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="overduefee_rz" fieldcaption="逾期融资利息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="punidebts_rz" fieldcaption="融资本金罚息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="punifee_rz" fieldcaption="融资利息罚息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="fundmanagefee" fieldcaption="融资管理费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="15" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="fundmanageoverdue" fieldcaption="融资逾期管理费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
--fis-1086,liny,20110304,融券息费
exec nb_add_queryfield 153104, 'fieldname="fee_rq" fieldcaption="融券利息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="20" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="overduefee_rq" fieldcaption="逾期融券利息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="punidebts_rq" fieldcaption="融券本金罚息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="punifee_rq" fieldcaption="融券利息罚息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="stkmanagefee" fieldcaption="融券管理费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="15" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="stkmanageoverdue" fieldcaption="融券逾期管理费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="15" printwidth="10" detailfield="0" detailcolno="1"'
--FIS-1861, meigy, 20130326
exec nb_add_queryfield 153104, 'fieldname="spacctfee" fieldcaption="特殊额度占用费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="15" printwidth="10" detailfield="0" detailcolno="1"'
--fis-1140, chenws, 20110503
exec nb_add_queryfield 153104, 'fieldname="overduerights" fieldcaption="融券应付权益金额" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="18" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="fee_zts" fieldcaption="约定占用费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="11" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="usedfee_zts" fieldcaption="约定使用费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="punifee_zts" fieldcaption="约定过期罚息" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="rightsamt_zts" fieldcaption="约定权益补偿金额" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="16" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="fundposifullfee" fieldcaption="融资头寸全额占用费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="fundposiunusefee" fieldcaption="融资头寸空闲费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="16" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="fundposiusefee" fieldcaption="融资头寸使用费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="16" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="stkposifullfee" fieldcaption="融券头寸全额占用费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="20" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="stkposiunusefee" fieldcaption="融券头寸空闲费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="16" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 153104, 'fieldname="stkposiusefee" fieldcaption="融券头寸使用费" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtSum" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="16" printwidth="10" detailfield="0" detailcolno="1"'

exec nb_add_queryfield 153104, 'fieldname="posstr" fieldcaption="定位串" fieldtype="ktString" fieldsize="64" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'

go
--end 20100527 fis-197