use run
go
exec nb_add_querybase 811504, 'title="客户基金资产查询" batchparamname="posstr" batchfields="posstr" batchnumber="100" fixcols="0" groupfields="" groupfieldsuse="" sortfields="" hislbmid="" sumlbmid="831504" begintime1="" endtime1="" begintime2="" endtime2="" begintime3="" endtime3="" displayrecno="" hidedetail="" refresh="0" rptfile="" pagetype="9" pagewidth="" pageheight="" leftmargin="100" rightmargin="100" topmargin="150" bottommargin="200" printdirection="0" pagealign="0" pageheadprint="1" pageheadfont="宋体" pageheadfontsize="16" pageheadbold="0" pageheaditalic="0" pagefootprint="1" pagefootfont="宋体" pagefootfontsize="16" pagefootbold="0" pagefootitalic="0" headprint="1" headfont="宋体" headfontsize="30" headbold="1" headitalic="0" subheadprint="1" subheadfont="宋体" subheadfontsize="16" subheadbold="1" subheaditalic="0" datatitleprint="1" datatitlefont="宋体" datatitlefontsize="18" datatitlebold="1" datatitleitalic="0" detailprint="1" detailfont="楷体_GB2312" detailfontsize="16" detailbold="0" detailitalic="0"'
go
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
exec nb_add_queryparam 811504, 'paramname="orgid" controlname="TCSBranchEdit" controlcaption="机构编码" controlwidth="100" controltype="btOrg" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="@ct_orgid" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="o" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="brhid" controlname="TCSBranchEdit" controlcaption="分支机构" controlwidth="100" controltype="btBranch" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="@ct_brhid" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="custid" controlname="" controlcaption="客户代码" controlwidth="100" controltype="ctCustid" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="@ct_custid" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="fundid" controlname="TCSCustomerEdit" controlcaption="资金帐号" controlwidth="100" controltype="ctFundid" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="taacc" controlname="TCSEdit" controlcaption="基金帐号" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="ktString" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="transacc" controlname="TCSEdit" controlcaption="交易帐号" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="ktString" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="tacode" controlname="TCSDataComboBox" controlcaption="基金公司" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="0" paramdict="_TaCode" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="ofcode" controlname="TCSDataPopCheckEdit" controlcaption="基金代码" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="1" editstyle="" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="ofassetlow" controlname="TCSMoney" controlcaption="份额下限" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="2" controlfxbz="0" editstyle="" paramvalue="-9999999999.99" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="ofassetup" controlname="TCSMoney" controlcaption="份额上限" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="2" controlfxbz="0" editstyle="" paramvalue="9999999999.99" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="posstr" controlname="" controlcaption="定位串" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
exec nb_add_queryparam 811504, 'paramname="qrynum" controlname="" controlcaption="查询行数" controlwidth="100" controltype="" controlmaxlen="0" controldeclen="0" controlfxbz="0" editstyle="" paramvalue="" paramdict="" paramitems="" paramnull="1" paramprint="0" paramspecialflag="" moreflag="0" logicsymbol="or"'
go
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
exec nb_add_queryfield 811504, 'fieldname="orgidname" fieldcaption="机构名称" fieldtype="ktString" fieldsize="20" fielddeclen="0" fielddict="_Org" fieldkey="orgid" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="10" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="fundid" fieldcaption="资金帐号" fieldtype="ktInt64" fieldsize="0" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="12" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="taacc" fieldcaption="基金帐号" fieldtype="ktString" fieldsize="12" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="12" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="transacc" fieldcaption="交易帐号" fieldtype="ktString" fieldsize="17" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="12" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="taname" fieldcaption="基金公司名称" fieldtype="ktString" fieldsize="16" fielddeclen="0" fielddict="_TaCode" fieldkey="tacode" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="18" printwidth="18" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="ofcode" fieldcaption="基金代码" fieldtype="ktString" fieldsize="8" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="10" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="ofname" fieldcaption="基金名称" fieldtype="ktString" fieldsize="16" fielddeclen="0" fielddict="" fieldkey="ofcode" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="18" printwidth="18" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="openfundkind" fieldcaption="基金类型" fieldtype="ktString" fieldsize="8" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="10" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="openfundkindname" fieldcaption="基金类型" fieldtype="ktString" fieldsize="8" fielddeclen="0" fielddict="Njjlx" fieldkey="openfundkind" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="10" printwidth="10" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="ofbal" fieldcaption="基金余额" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="12" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="ofavl" fieldcaption="基金可用数" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="12" printwidth="12" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="marketvalue" fieldcaption="基金证券市值" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="14" printwidth="14" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="oftrdfrz" fieldcaption="基金交易冻结数" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="16" printwidth="16" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="currentcost" fieldcaption="基金买入成本价" fieldtype="ktFloat" fieldsize="0" fielddeclen="4" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="14" printwidth="14" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="lastcost" fieldcaption="基金昨日买入成本价" fieldtype="ktFloat" fieldsize="0" fielddeclen="4" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="18" printwidth="18" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="oflongfrz" fieldcaption="基金长期冻结数" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="16" printwidth="16" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="oflastbal" fieldcaption="基金昨日余额" fieldtype="ktFloat" fieldsize="0" fielddeclen="2" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="14" printwidth="14" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="shareclassname" fieldcaption="收费方式" fieldtype="ktString" fieldsize="24" fielddeclen="0" fielddict="Nsffs" fieldkey="shareclass" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="1" sysprint="1" displaywidth="8" printwidth="8" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="tacode" fieldcaption="基金公司" fieldtype="ktInteger" fieldsize="0" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="shareclass" fieldcaption="收费方式" fieldtype="ktString" fieldsize="1" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="serverid" fieldcaption="机器编码" fieldtype="ktInteger" fieldsize="0" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="custid" fieldcaption="客户代码" fieldtype="ktInt64" fieldsize="0" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="posstr" fieldcaption="定位串" fieldtype="ktString" fieldsize="64" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
exec nb_add_queryfield 811504, 'fieldname="orgid" fieldcaption="机构编码" fieldtype="ktString" fieldsize="4" fielddeclen="0" fielddict="" fieldkey="" fieldlookupserverid="" fieldlookuporgid="" fieldsumtype="fvtNon" fieldsumvalue="" fieldsubsumtype="fvtNon" fieldsubsumvalue="" sysvisable="0" sysprint="0" displaywidth="0" printwidth="0" detailfield="0" detailcolno="1"'
go
