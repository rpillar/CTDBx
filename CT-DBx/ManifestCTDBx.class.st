"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestCTDBx',
	#superclass : 'PackageManifest',
	#category : 'CT-DBx',
	#package : 'CT-DBx'
}

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleAssignmentInIfTrueRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParams: #false)) #'2022-11-02T21:38:01.906877+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleBadMessageRule2V1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxResult #processSearchQuery: #false)) #'2022-11-02T21:34:26.54816+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRAnsiCollectionsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateUpdateString:on: #false)) #'2019-11-07T18:55:59.645639+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRAnsiConvertorRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParams: #false)) #'2019-10-07T20:47:47.577006+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLimitParamOn:updating: #false)) #'2019-11-07T19:19:07.2735+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryOrderbyParamOn:with:updating: #false)) #'2019-11-07T19:21:44.282105+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #processSearchQuery: #false)) #'2019-11-10T21:55:50.170208+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #next #false)) #'2019-12-02T18:32:52.52219+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAllWithLimit: #false)) #'2020-04-28T18:40:12.811587+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbUpdate: #false)) #'2020-06-02T13:21:23.184854+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString:on: #false)) #'2020-08-21T14:25:56.788077+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString: #false)) #'2020-08-21T14:26:02.479929+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateUpdateString:on: #false)) #'2020-08-21T14:26:08.170001+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbDelete: #false)) #'2020-08-22T09:00:31.424914+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeyData:on:with: #false)) #'2020-08-29T15:03:29.322766+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeys:on:with: #false)) #'2020-08-29T15:05:10.960272+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParamFormat: #false)) #'2020-09-12T21:23:45.612347+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAllOrderedBy:order:limit: #false)) #'2021-02-08T22:37:43.444968+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRGuardClauseRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxResult #next #false)) #'2020-03-25T22:54:37.390117+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRGuradGuardClauseRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxResult #next #false)) #'2019-12-02T18:33:02.993707+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRInstanceVariableCapitalizationRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#CTDBxResultTableIncome)) #'2019-12-09T21:50:39.055752+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRParensFormattingRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxResult #processSearchQuery: #false)) #'2019-10-02T08:27:25.240487+01:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #createTableFields #false)) #'2019-10-07T20:40:38.490303+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchFirst: #false)) #'2019-10-07T20:45:23.660162+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryBetweenParamOn:with:updating: #false)) #'2019-10-07T20:45:37.20223+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLikeParamOn:with:updating: #false)) #'2019-10-07T20:45:43.076787+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateUpdateString:on: #false)) #'2019-10-07T20:45:49.93389+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParams: #false)) #'2019-10-07T20:47:19.016078+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchCount: #false)) #'2019-10-07T20:48:15.91803+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAll #false)) #'2019-10-07T20:48:21.621248+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearch: #false)) #'2019-10-07T20:48:30.629114+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCreateOrUpdate: #false)) #'2019-10-07T20:48:40.355014+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbDelete: #false)) #'2019-10-07T20:48:52.321519+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbUpdate: #false)) #'2019-10-07T20:49:02.886253+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateInsertFieldsString: #false)) #'2019-10-07T20:49:34.482682+01:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #createTableRelations #false)) #'2019-10-07T23:30:55.931455+01:00') #(#(#RGMethodDefinition #(#CTDBxResult #processSearchQuery:with: #false)) #'2019-10-09T08:33:21.422931+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateQueryFieldsString: #false)) #'2019-11-07T18:41:04.759879+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString: #false)) #'2019-11-07T18:56:18.766994+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLimitParamOn:updating: #false)) #'2019-11-07T19:18:29.064968+00:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #tableRelations #false)) #'2019-11-07T19:20:29.099428+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryOrderbyParamOn:with:updating: #false)) #'2019-11-07T19:21:39.88524+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryOrParamOn:with:updating: #false)) #'2019-11-07T19:21:54.042023+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #schema: #false)) #'2019-11-07T21:25:58.871363+00:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #tableFields #false)) #'2019-11-09T20:30:09.07118+00:00') #(#(#RGMethodDefinition #(#CTDBxResultTableCars #rPerformance #false)) #'2019-11-11T19:36:50.372164+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #next #false)) #'2019-12-02T17:49:56.526615+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #queryTableObject #false)) #'2020-03-25T23:01:55.216647+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString:on: #false)) #'2020-03-25T23:10:14.734503+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCreate: #false)) #'2020-03-25T23:13:08.616259+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAll: #false)) #'2020-04-11T13:13:09.310014+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAllWithLimit: #false)) #'2020-04-11T13:16:08.031323+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCount #false)) #'2020-06-02T20:34:49.410759+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeyData:on:with: #false)) #'2020-08-29T15:03:39.899286+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeys:on:with: #false)) #'2020-08-29T15:04:59.412555+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryNEParamOn:with:updating: #false)) #'2020-09-08T21:48:29.176874+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLTParamOn:with:updating: #false)) #'2020-09-08T22:05:40.372607+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryGTParamOn:with:updating: #false)) #'2020-09-10T22:46:06.084928+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryComparisonParamOn:with:updating: #false)) #'2020-09-10T22:48:53.248363+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParamFormat: #false)) #'2020-09-12T21:23:34.236886+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAllOrderedBy:order:limit: #false)) #'2021-02-08T22:37:46.802265+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRTemporaryNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxResult #processSearchQuery: #false)) #'2019-11-10T21:52:58.627719+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleGRUsesCurlyBraceArraysRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #createTableFields #false)) #'2019-10-07T20:56:16.878736+01:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #createTableRelations #false)) #'2019-10-07T22:28:15.439305+01:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #tableFields #false)) #'2019-11-07T18:48:27.793554+00:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #tableRelations #false)) #'2019-11-07T19:20:22.114333+00:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #relationPerformance #false)) #'2019-11-09T20:22:02.341759+00:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaPerformance #tableFields #false)) #'2019-11-09T20:26:45.10456+00:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #relationPerformance: #false)) #'2019-11-09T21:24:31.688108+00:00') #(#(#RGMethodDefinition #(#CTDBxResultTableCars #rPerformance #false)) #'2019-11-10T20:35:59.184271+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleJustSendsSuperRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #initialize #false)) #'2022-11-05T18:59:12.167935+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParams: #false)) #'2022-11-02T21:37:16.321513+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBAssignmentInIfTrueRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParams: #false)) #'2019-07-15T23:17:39.311379+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBBadMessageRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxResult #processSearchQuery: #false)) #'2019-11-10T21:55:46.938772+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #next #false)) #'2019-12-02T18:32:32.846019+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBClassNotReferencedRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#CTDBxQuery)) #'2019-08-10T22:48:53.19973+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBEndTrueFalseRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #dbDelete: #false)) #'2020-08-29T14:48:53.815902+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBGlobalVariablesUsageV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #queryTableObject #false)) #'2020-03-25T23:02:22.299021+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCreate: #false)) #'2020-03-25T23:12:19.152543+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCreateOrUpdate: #false)) #'2020-03-25T23:15:34.323143+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbDelete: #false)) #'2020-03-25T23:16:19.726659+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearch: #false)) #'2020-03-25T23:16:33.52288+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAll #false)) #'2020-03-25T23:16:43.721022+00:00') #(#(#RGClassDefinition #(#CTDBxQuery)) #'2020-03-25T23:16:54.573257+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBGuardingClauseRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxResult #next #false)) #'2019-12-02T18:32:57.997269+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBImplementedNotSentRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #queryTableObject #false)) #'2020-03-25T23:02:38.932092+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString:on: #false)) #'2020-03-25T23:10:28.519484+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCreate: #false)) #'2020-03-25T23:13:29.270613+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCreateOrUpdate: #false)) #'2020-03-25T23:15:38.292298+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbDelete: #false)) #'2020-03-25T23:16:22.758008+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAll #false)) #'2020-03-25T23:16:40.592444+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchCount: #false)) #'2020-03-25T23:16:58.954961+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchFirst: #false)) #'2020-03-25T23:17:27.391004+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbUpdate: #false)) #'2020-03-25T23:18:40.221947+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAllWithLimit: #false)) #'2020-04-11T13:16:13.694355+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString: #false)) #'2020-05-16T18:05:18.665417+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCount #false)) #'2020-06-02T20:35:02.605095+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeyData:on:with: #false)) #'2020-08-29T15:03:52.928707+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeys:on:with: #false)) #'2020-08-29T15:05:14.969857+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLTParamOn:with:updating: #false)) #'2020-09-08T22:05:47.749088+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryComparisonParamOn:with:updating: #false)) #'2020-09-10T22:49:01.15194+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParamFormat: #false)) #'2020-09-12T21:23:59.702558+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCount: #false)) #'2020-11-15T10:06:10.475842+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAllOrderedBy:order:limit: #false)) #'2021-02-08T22:37:52.345388+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBJustSendsSuperRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxTableCars #initialize #false)) #'2019-07-16T22:30:15.193043+01:00') #(#(#RGMethodDefinition #(#CTDBxTableDepartments #initialize #false)) #'2019-08-19T23:29:49.306988+01:00') #(#(#RGMethodDefinition #(#CTDBxResultTableCars #initialize #false)) #'2019-11-10T20:30:24.402985+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #initialize #false)) #'2020-03-25T23:19:15.156119+00:00') #(#(#RGMethodDefinition #(#CTDBxConnection #initialize #false)) #'2020-09-12T22:10:39.540832+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParams: #false)) #'2019-07-15T15:49:00.451694+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBSelfSentNotImplementedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #dbCreateOrUpdate: #false)) #'2019-08-09T11:45:05.364503+03:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBSentNotImplementedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryNEParamOn:with:updating: #false)) #'2020-09-08T21:48:24.734162+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBStringConcatenationRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString #false)) #'2018-07-19T20:54:36.058668+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateUpdateString #false)) #'2018-07-19T21:49:49.792866+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBUnaryAccessingMethodWithoutReturnRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #dbSearchAll #false)) #'2018-08-01T07:59:46.3854+01:00') #(#(#RGMethodDefinition #(#CTDBxTableCars #initialize #false)) #'2019-07-16T22:30:11.408927+01:00') #(#(#RGMethodDefinition #(#CTDBxTableDepartments #initialize #false)) #'2019-08-19T23:29:54.744365+01:00') #(#(#RGMethodDefinition #(#CTDBxResultTableCars #rPerformance #false)) #'2019-11-10T20:36:03.402009+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #next #false)) #'2019-12-02T18:32:38.000187+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #dbCount #false)) #'2020-06-02T20:34:55.512291+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleRBUtilityMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParams: #false)) #'2018-07-21T21:11:09.639041+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLikeParamOn:with:updating: #false)) #'2019-07-14T21:10:24.399957+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryBetweenParamOn:with:updating: #false)) #'2019-07-14T21:10:46.364443+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryOrderbyParamOn:with:updating: #false)) #'2019-07-14T21:10:54.539485+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateFieldsString: #false)) #'2019-08-09T14:44:12.241497+03:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateQueryFieldsString: #false)) #'2019-08-09T14:48:08.105754+03:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryOrParamOn:with:updating: #false)) #'2019-08-10T22:18:32.528317+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateUpdateString:on: #false)) #'2019-08-10T22:44:49.060567+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateInsertFieldsString: #false)) #'2019-10-07T20:49:47.889824+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLimitParamOn:updating: #false)) #'2019-11-07T19:18:39.101093+00:00') #(#(#RGMethodDefinition #(#CTDBxTableSchemaCars #relationPerformance: #false)) #'2019-11-09T21:24:43.13153+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString:on: #false)) #'2020-03-25T23:10:33.42419+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString: #false)) #'2020-05-16T18:05:23.025881+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeyData:on:with: #false)) #'2020-08-29T15:03:35.662205+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeys:on:with: #false)) #'2020-08-29T15:05:18.157223+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryNEParamOn:with:updating: #false)) #'2020-09-08T21:48:19.785211+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryLTParamOn:with:updating: #false)) #'2020-09-08T22:05:44.019222+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryGTParamOn:with:updating: #false)) #'2020-09-10T22:46:09.424514+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryComparisonParamOn:with:updating: #false)) #'2020-09-10T22:48:57.35906+01:00') #(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParamFormat: #false)) #'2020-09-12T21:23:51.901765+01:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleReDeadMethodV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxTableCars #dbTableFields #false)) #'2019-07-16T22:30:35.565091+01:00') #(#(#RGMethodDefinition #(#CTDBxResult #schema: #false)) #'2019-11-07T21:22:41.930834+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #schema #false)) #'2019-11-07T21:22:47.334769+00:00') #(#(#RGMethodDefinition #(#CTDBxResult #rsPointer #false)) #'2019-12-02T17:36:22.494048+00:00') )
]

{ #category : 'code-critics' }
ManifestCTDBx class >> ruleUtilityMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTDBxQuery #parseSearchQueryParamFormat: #false)) #'2022-11-05T18:58:47.484641+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateQueryFieldsString: #false)) #'2022-11-05T19:02:37.191095+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString: #false)) #'2022-11-05T19:03:53.982037+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperCreateValuesString:on: #false)) #'2022-11-05T19:05:21.41958+00:00') #(#(#RGMethodDefinition #(#CTDBxQuery #helperProcessPrimaryKeyData:on:with: #false)) #'2022-11-05T19:05:35.193626+00:00') )
]
