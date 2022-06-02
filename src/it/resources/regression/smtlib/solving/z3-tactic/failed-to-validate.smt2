; With z3, this produces unsat (expected), however, with z3 tactic.default_tactic=smt sat.euf=true,
; z3 emits an error on stderr but continues and emits a sat (incorrect!).
; As such, the ProcessInterpreter must also ensure that the stderr is empty. If it is not, it should return an Error.
(set-option :print-success true)
(set-option :produce-unsat-assumptions true)

(declare-fun start!2 () Bool)

(assert start!2)

(declare-fun b!107 () Bool)

(declare-fun res!98 () Bool)

(declare-fun e!24 () Bool)

(assert (=> b!107 (=> (not res!98) (not e!24))))

(declare-datatypes () ((array!25 (array!26 (arr!6 (Array (_ BitVec 32) (_ BitVec 8))) (size!9 (_ BitVec 32))))))

(declare-datatypes () ((Buffer!12 (Buffer!13 (array!27 array!25) (length!14 (_ BitVec 32))))))

(declare-fun thiss!35 () Buffer!12)

(declare-fun b!46 () Buffer!12)

(assert (=> b!107 (= res!98 (= (length!14 thiss!35) (length!14 b!46)))))

(declare-fun b!108 () Bool)

(declare-fun res!97 () Bool)

(declare-fun e!25 () Bool)

(assert (=> b!108 (=> (not res!97) (not e!25))))

(declare-fun i!48 () (_ BitVec 32))

(assert (=> b!108 (= res!97 (bvslt i!48 (length!14 thiss!35)))))

(declare-fun b!109 () Bool)

(declare-fun e!31 () Bool)

(assert (=> b!109 (= e!31 e!25)))

(declare-fun res!107 () Bool)

(assert (=> b!109 (=> (not res!107) (not e!25))))

(declare-fun lt!4 () Buffer!12)

(declare-fun isValid!1 (Buffer!12) Bool)

(assert (=> b!109 (= res!107 (isValid!1 lt!4))))

(declare-fun thiss!34 () Buffer!12)

(assert (=> b!109 (= lt!4 (Buffer!13 (array!27 thiss!34) (length!14 b!46)))))

(declare-fun b!110 () Bool)

(declare-fun e!33 () Bool)

(declare-fun array_inv!5 (array!25) Bool)

(assert (=> b!110 (= e!33 (array_inv!5 (array!27 thiss!35)))))

(declare-fun b!111 () Bool)

(declare-fun res!103 () Bool)

(assert (=> b!111 (=> (not res!103) (not e!25))))

(assert (=> b!111 (= res!103 (and (= (length!14 b!46) (length!14 b!46)) (bvsle #b00000000000000000000000000000000 i!48) (bvsle i!48 (length!14 thiss!35))))))

(declare-fun b!112 () Bool)

(declare-fun res!92 () Bool)

(assert (=> b!112 (=> (not res!92) (not e!25))))

(assert (=> b!112 (= res!92 (isValid!1 thiss!35))))

(declare-fun b!113 () Bool)

(declare-fun res!104 () Bool)

(assert (=> b!113 (=> (not res!104) (not e!24))))

(declare-fun lt!5 () Buffer!12)

(declare-fun nonEmpty!3 (Buffer!12) Bool)

(assert (=> b!113 (= res!104 (nonEmpty!3 lt!5))))

(declare-fun res!95 () Bool)

(assert (=> start!2 (=> (not res!95) (not e!31))))

(assert (=> start!2 (= res!95 (isValid!1 thiss!34))))

(assert (=> start!2 e!31))

(declare-fun e!27 () Bool)

(assert (=> start!2 e!27))

(declare-fun e!30 () Bool)

(assert (=> start!2 e!30))

(assert (=> start!2 e!33))

(assert (=> start!2 true))

(declare-fun b!114 () Bool)

(declare-fun res!96 () Bool)

(assert (=> b!114 (=> (not res!96) (not e!25))))

(assert (=> b!114 (= res!96 (nonEmpty!3 lt!4))))

(declare-fun b!115 () Bool)

(declare-fun areRangesEqual!0 (array!25 array!25 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!115 (= e!24 (not (areRangesEqual!0 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35))) (array!27 b!46) #b00000000000000000000000000000000 (bvadd i!48 #b00000000000000000000000000000001))))))

(declare-fun b!116 () Bool)

(assert (=> b!116 (= e!30 (array_inv!5 (array!27 b!46)))))

(declare-fun b!117 () Bool)

(assert (=> b!117 (= e!25 e!24)))

(declare-fun res!105 () Bool)

(assert (=> b!117 (=> (not res!105) (not e!24))))

(assert (=> b!117 (= res!105 (isValid!1 lt!5))))

(assert (=> b!117 (= lt!5 (Buffer!13 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35))) (length!14 thiss!35)))))

(declare-fun b!118 () Bool)

(declare-fun res!102 () Bool)

(assert (=> b!118 (=> (not res!102) (not e!25))))

(assert (=> b!118 (= res!102 (nonEmpty!3 thiss!35))))

(declare-fun b!119 () Bool)

(declare-fun res!99 () Bool)

(assert (=> b!119 (=> (not res!99) (not e!31))))

(assert (=> b!119 (= res!99 (nonEmpty!3 b!46))))

(declare-fun b!120 () Bool)

(declare-fun res!106 () Bool)

(assert (=> b!120 (=> (not res!106) (not e!25))))

(assert (=> b!120 (= res!106 (areRangesEqual!0 (array!27 thiss!35) (array!27 b!46) #b00000000000000000000000000000000 i!48))))

(declare-fun b!121 () Bool)

(declare-fun res!94 () Bool)

(assert (=> b!121 (=> (not res!94) (not e!25))))

(declare-fun e!29 () Bool)

(assert (=> b!121 (= res!94 e!29)))

(declare-fun res!93 () Bool)

(assert (=> b!121 (=> res!93 e!29)))

(assert (=> b!121 (= res!93 (bvsle i!48 #b00000000000000000000000000000000))))

(declare-fun b!122 () Bool)

(assert (=> b!122 (= e!29 (areRangesEqual!0 (array!27 thiss!35) (array!27 b!46) #b00000000000000000000000000000000 i!48))))

(declare-fun b!123 () Bool)

(declare-fun res!101 () Bool)

(assert (=> b!123 (=> (not res!101) (not e!31))))

(assert (=> b!123 (= res!101 (isValid!1 b!46))))

(declare-fun b!124 () Bool)

(declare-fun res!100 () Bool)

(assert (=> b!124 (=> (not res!100) (not e!25))))

(assert (=> b!124 (= res!100 (= (length!14 thiss!35) (length!14 b!46)))))

(declare-fun b!125 () Bool)

(assert (=> b!125 (= e!27 (array_inv!5 (array!27 thiss!34)))))

(assert (= (and start!2 res!95) b!123))

(assert (= (and b!123 res!101) b!119))

(assert (= (and b!119 res!99) b!109))

(assert (= (and b!109 res!107) b!114))

(assert (= (and b!114 res!96) b!111))

(assert (= (and b!111 res!103) b!112))

(assert (= (and b!112 res!92) b!118))

(assert (= (and b!118 res!102) b!124))

(assert (= (and b!124 res!100) b!120))

(assert (= (and b!120 res!106) b!108))

(assert (= (and b!108 res!97) b!121))

(assert (= (and b!121 (not res!93)) b!122))

(assert (= (and b!121 res!94) b!117))

(assert (= (and b!117 res!105) b!113))

(assert (= (and b!113 res!104) b!107))

(assert (= (and b!107 res!98) b!115))

(assert (= start!2 b!125))

(assert (= start!2 b!116))

(assert (= start!2 b!110))

(declare-fun m!13 () Bool)

(assert (=> b!117 m!13))

(declare-fun m!15 () Bool)

(assert (=> b!117 m!15))

(declare-fun m!17 () Bool)

(assert (=> b!117 m!17))

(declare-fun m!19 () Bool)

(assert (=> b!114 m!19))

(declare-fun m!21 () Bool)

(assert (=> b!113 m!21))

(declare-fun m!23 () Bool)

(assert (=> b!123 m!23))

(declare-fun m!25 () Bool)

(assert (=> b!109 m!25))

(declare-fun m!27 () Bool)

(assert (=> b!118 m!27))

(declare-fun m!29 () Bool)

(assert (=> b!122 m!29))

(declare-fun m!31 () Bool)

(assert (=> b!110 m!31))

(declare-fun m!33 () Bool)

(assert (=> b!112 m!33))

(declare-fun m!35 () Bool)

(assert (=> b!119 m!35))

(declare-fun m!37 () Bool)

(assert (=> b!116 m!37))

(assert (=> b!120 m!29))

(declare-fun m!39 () Bool)

(assert (=> b!125 m!39))

(declare-fun m!41 () Bool)

(assert (=> start!2 m!41))

(assert (=> b!115 m!15))

(assert (=> b!115 m!17))

(declare-fun m!43 () Bool)

(assert (=> b!115 m!43))

(declare-fun d!1 () Bool)

(assert (=> d!1 (= (nonEmpty!3 lt!5) (bvsgt (length!14 lt!5) #b00000000000000000000000000000000))))

(assert (=> b!113 d!1))

(declare-fun d!3 () Bool)

(assert (=> d!3 (= (nonEmpty!3 lt!4) (bvsgt (length!14 lt!4) #b00000000000000000000000000000000))))

(assert (=> b!114 d!3))

(declare-fun d!5 () Bool)

(declare-fun res!112 () Bool)

(declare-fun e!36 () Bool)

(assert (=> d!5 (=> (not res!112) (not e!36))))

(assert (=> d!5 (= res!112 (bvsge (length!14 thiss!35) #b00000000000000000000000000000000))))

(assert (=> d!5 (= (isValid!1 thiss!35) e!36)))

(declare-fun b!130 () Bool)

(declare-fun res!113 () Bool)

(assert (=> b!130 (=> (not res!113) (not e!36))))

(declare-fun capacity!1 (Buffer!12) (_ BitVec 32))

(assert (=> b!130 (= res!113 (bvsle (length!14 thiss!35) (capacity!1 thiss!35)))))

(declare-fun b!131 () Bool)

(assert (=> b!131 (= e!36 (= (capacity!1 thiss!35) #b00000000000000000000000001000000))))

(assert (= (and d!5 res!112) b!130))

(assert (= (and b!130 res!113) b!131))

(declare-fun m!45 () Bool)

(assert (=> b!130 m!45))

(assert (=> b!131 m!45))

(assert (=> b!112 d!5))

(declare-fun d!7 () Bool)

(declare-fun res!114 () Bool)

(declare-fun e!37 () Bool)

(assert (=> d!7 (=> (not res!114) (not e!37))))

(assert (=> d!7 (= res!114 (bvsge (length!14 b!46) #b00000000000000000000000000000000))))

(assert (=> d!7 (= (isValid!1 b!46) e!37)))

(declare-fun b!132 () Bool)

(declare-fun res!115 () Bool)

(assert (=> b!132 (=> (not res!115) (not e!37))))

(assert (=> b!132 (= res!115 (bvsle (length!14 b!46) (capacity!1 b!46)))))

(declare-fun b!133 () Bool)

(assert (=> b!133 (= e!37 (= (capacity!1 b!46) #b00000000000000000000000001000000))))

(assert (= (and d!7 res!114) b!132))

(assert (= (and b!132 res!115) b!133))

(declare-fun m!47 () Bool)

(assert (=> b!132 m!47))

(assert (=> b!133 m!47))

(assert (=> b!123 d!7))

(declare-fun d!9 () Bool)

(assert (=> d!9 (= (array_inv!5 (array!27 b!46)) (bvsge (size!9 (array!27 b!46)) #b00000000000000000000000000000000))))

(assert (=> b!116 d!9))

(declare-fun d!11 () Bool)

(assert (=> d!11 (= (array_inv!5 (array!27 thiss!34)) (bvsge (size!9 (array!27 thiss!34)) #b00000000000000000000000000000000))))

(assert (=> b!125 d!11))

(declare-fun d!13 () Bool)

(declare-fun res!120 () Bool)

(declare-fun e!42 () Bool)

(assert (=> d!13 (=> res!120 e!42)))

(assert (=> d!13 (= res!120 (= #b00000000000000000000000000000000 (bvadd i!48 #b00000000000000000000000000000001)))))

(assert (=> d!13 (= (areRangesEqual!0 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35))) (array!27 b!46) #b00000000000000000000000000000000 (bvadd i!48 #b00000000000000000000000000000001)) e!42)))

(declare-fun b!139 () Bool)

(declare-fun e!43 () Bool)

(assert (=> b!139 (= e!42 e!43)))

(declare-fun res!121 () Bool)

(assert (=> b!139 (=> (not res!121) (not e!43))))

(assert (=> b!139 (= res!121 (= ((_ sign_extend 24) (select (arr!6 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35)))) #b00000000000000000000000000000000)) ((_ sign_extend 24) (select (arr!6 (array!27 b!46)) #b00000000000000000000000000000000))))))

(declare-fun b!140 () Bool)

(assert (=> b!140 (= e!43 (areRangesEqual!0 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35))) (array!27 b!46) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd i!48 #b00000000000000000000000000000001)))))

(assert (= (and d!13 (not res!120)) b!139))

(assert (= (and b!139 res!121) b!140))

(declare-fun m!49 () Bool)

(assert (=> b!139 m!49))

(declare-fun m!51 () Bool)

(assert (=> b!139 m!51))

(declare-fun m!53 () Bool)

(assert (=> b!140 m!53))

(assert (=> b!115 d!13))

(declare-fun d!15 () Bool)

(assert (=> d!15 (= (nonEmpty!3 b!46) (bvsgt (length!14 b!46) #b00000000000000000000000000000000))))

(assert (=> b!119 d!15))

(declare-fun d!17 () Bool)

(declare-fun res!122 () Bool)

(declare-fun e!44 () Bool)

(assert (=> d!17 (=> (not res!122) (not e!44))))

(assert (=> d!17 (= res!122 (bvsge (length!14 lt!5) #b00000000000000000000000000000000))))

(assert (=> d!17 (= (isValid!1 lt!5) e!44)))

(declare-fun b!141 () Bool)

(declare-fun res!123 () Bool)

(assert (=> b!141 (=> (not res!123) (not e!44))))

(assert (=> b!141 (= res!123 (bvsle (length!14 lt!5) (capacity!1 lt!5)))))

(declare-fun b!142 () Bool)

(assert (=> b!142 (= e!44 (= (capacity!1 lt!5) #b00000000000000000000000001000000))))

(assert (= (and d!17 res!122) b!141))

(assert (= (and b!141 res!123) b!142))

(declare-fun m!55 () Bool)

(assert (=> b!141 m!55))

(assert (=> b!142 m!55))

(assert (=> b!117 d!17))

(declare-fun d!19 () Bool)

(assert (=> d!19 (= (nonEmpty!3 thiss!35) (bvsgt (length!14 thiss!35) #b00000000000000000000000000000000))))

(assert (=> b!118 d!19))

(declare-fun d!21 () Bool)

(declare-fun res!124 () Bool)

(declare-fun e!45 () Bool)

(assert (=> d!21 (=> res!124 e!45)))

(assert (=> d!21 (= res!124 (= #b00000000000000000000000000000000 i!48))))

(assert (=> d!21 (= (areRangesEqual!0 (array!27 thiss!35) (array!27 b!46) #b00000000000000000000000000000000 i!48) e!45)))

(declare-fun b!143 () Bool)

(declare-fun e!46 () Bool)

(assert (=> b!143 (= e!45 e!46)))

(declare-fun res!125 () Bool)

(assert (=> b!143 (=> (not res!125) (not e!46))))

(assert (=> b!143 (= res!125 (= ((_ sign_extend 24) (select (arr!6 (array!27 thiss!35)) #b00000000000000000000000000000000)) ((_ sign_extend 24) (select (arr!6 (array!27 b!46)) #b00000000000000000000000000000000))))))

(declare-fun b!144 () Bool)

(assert (=> b!144 (= e!46 (areRangesEqual!0 (array!27 thiss!35) (array!27 b!46) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) i!48))))

(assert (= (and d!21 (not res!124)) b!143))

(assert (= (and b!143 res!125) b!144))

(declare-fun m!57 () Bool)

(assert (=> b!143 m!57))

(assert (=> b!143 m!51))

(declare-fun m!59 () Bool)

(assert (=> b!144 m!59))

(assert (=> b!122 d!21))

(assert (=> b!120 d!21))

(declare-fun d!23 () Bool)

(declare-fun res!126 () Bool)

(declare-fun e!47 () Bool)

(assert (=> d!23 (=> (not res!126) (not e!47))))

(assert (=> d!23 (= res!126 (bvsge (length!14 lt!4) #b00000000000000000000000000000000))))

(assert (=> d!23 (= (isValid!1 lt!4) e!47)))

(declare-fun b!145 () Bool)

(declare-fun res!127 () Bool)

(assert (=> b!145 (=> (not res!127) (not e!47))))

(assert (=> b!145 (= res!127 (bvsle (length!14 lt!4) (capacity!1 lt!4)))))

(declare-fun b!146 () Bool)

(assert (=> b!146 (= e!47 (= (capacity!1 lt!4) #b00000000000000000000000001000000))))

(assert (= (and d!23 res!126) b!145))

(assert (= (and b!145 res!127) b!146))

(declare-fun m!61 () Bool)

(assert (=> b!145 m!61))

(assert (=> b!146 m!61))

(assert (=> b!109 d!23))

(declare-fun d!25 () Bool)

(assert (=> d!25 (= (array_inv!5 (array!27 thiss!35)) (bvsge (size!9 (array!27 thiss!35)) #b00000000000000000000000000000000))))

(assert (=> b!110 d!25))

(declare-fun d!27 () Bool)

(declare-fun res!128 () Bool)

(declare-fun e!48 () Bool)

(assert (=> d!27 (=> (not res!128) (not e!48))))

(assert (=> d!27 (= res!128 (bvsge (length!14 thiss!34) #b00000000000000000000000000000000))))

(assert (=> d!27 (= (isValid!1 thiss!34) e!48)))

(declare-fun b!147 () Bool)

(declare-fun res!129 () Bool)

(assert (=> b!147 (=> (not res!129) (not e!48))))

(assert (=> b!147 (= res!129 (bvsle (length!14 thiss!34) (capacity!1 thiss!34)))))

(declare-fun b!148 () Bool)

(assert (=> b!148 (= e!48 (= (capacity!1 thiss!34) #b00000000000000000000000001000000))))

(assert (= (and d!27 res!128) b!147))

(assert (= (and b!147 res!129) b!148))

(declare-fun m!63 () Bool)

(assert (=> b!147 m!63))

(assert (=> b!148 m!63))

(assert (=> start!2 d!27))

(declare-fun d!29 () Bool)

(assert (=> d!29 (= (capacity!1 lt!4) (size!9 (array!27 lt!4)))))

(assert (=> b!146 d!29))

(declare-fun d!31 () Bool)

(declare-fun res!130 () Bool)

(declare-fun e!49 () Bool)

(assert (=> d!31 (=> res!130 e!49)))

(assert (=> d!31 (= res!130 (= (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) i!48))))

(assert (=> d!31 (= (areRangesEqual!0 (array!27 thiss!35) (array!27 b!46) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) i!48) e!49)))

(declare-fun b!149 () Bool)

(declare-fun e!50 () Bool)

(assert (=> b!149 (= e!49 e!50)))

(declare-fun res!131 () Bool)

(assert (=> b!149 (=> (not res!131) (not e!50))))

(assert (=> b!149 (= res!131 (= ((_ sign_extend 24) (select (arr!6 (array!27 thiss!35)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) ((_ sign_extend 24) (select (arr!6 (array!27 b!46)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(declare-fun b!150 () Bool)

(assert (=> b!150 (= e!50 (areRangesEqual!0 (array!27 thiss!35) (array!27 b!46) (bvadd (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000001) i!48))))

(assert (= (and d!31 (not res!130)) b!149))

(assert (= (and b!149 res!131) b!150))

(declare-fun m!65 () Bool)

(assert (=> b!149 m!65))

(declare-fun m!67 () Bool)

(assert (=> b!149 m!67))

(declare-fun m!69 () Bool)

(assert (=> b!150 m!69))

(assert (=> b!144 d!31))

(declare-fun d!33 () Bool)

(assert (=> d!33 (= (capacity!1 b!46) (size!9 (array!27 b!46)))))

(assert (=> b!132 d!33))

(declare-fun d!35 () Bool)

(assert (=> d!35 (= (capacity!1 thiss!34) (size!9 (array!27 thiss!34)))))

(assert (=> b!148 d!35))

(declare-fun d!37 () Bool)

(assert (=> d!37 (= (capacity!1 lt!5) (size!9 (array!27 lt!5)))))

(assert (=> b!142 d!37))

(assert (=> b!147 d!35))

(assert (=> b!145 d!29))

(declare-fun d!39 () Bool)

(assert (=> d!39 (= (capacity!1 thiss!35) (size!9 (array!27 thiss!35)))))

(assert (=> b!130 d!39))

(assert (=> b!131 d!39))

(assert (=> b!133 d!33))

(declare-fun d!41 () Bool)

(declare-fun res!132 () Bool)

(declare-fun e!51 () Bool)

(assert (=> d!41 (=> res!132 e!51)))

(assert (=> d!41 (= res!132 (= (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd i!48 #b00000000000000000000000000000001)))))

(assert (=> d!41 (= (areRangesEqual!0 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35))) (array!27 b!46) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd i!48 #b00000000000000000000000000000001)) e!51)))

(declare-fun b!151 () Bool)

(declare-fun e!52 () Bool)

(assert (=> b!151 (= e!51 e!52)))

(declare-fun res!133 () Bool)

(assert (=> b!151 (=> (not res!133) (not e!52))))

(assert (=> b!151 (= res!133 (= ((_ sign_extend 24) (select (arr!6 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) ((_ sign_extend 24) (select (arr!6 (array!27 b!46)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(declare-fun b!152 () Bool)

(assert (=> b!152 (= e!52 (areRangesEqual!0 (array!26 (store (arr!6 (array!27 thiss!35)) i!48 (select (arr!6 (array!27 b!46)) i!48)) (size!9 (array!27 thiss!35))) (array!27 b!46) (bvadd (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd i!48 #b00000000000000000000000000000001)))))

(assert (= (and d!41 (not res!132)) b!151))

(assert (= (and b!151 res!133) b!152))

(declare-fun m!71 () Bool)

(assert (=> b!151 m!71))

(assert (=> b!151 m!67))

(declare-fun m!73 () Bool)

(assert (=> b!152 m!73))

(assert (=> b!140 d!41))

(assert (=> b!141 d!37))

(assert (not b!150))

(assert (not b!152))

(check-sat)
(exit)