module.exports=
  enabled: true
  name: 'github'
  config:
    rules:
      updateDiscussion: [
        onLineChange: false
        withTag: ""
      ]
      labelBot: [
        withContext: ""
      ]
      waffleIoMappingBot: [
        imdoneListName: "DOING"
        waffleListNameLabel: "in progress"
      ]
      createIssue: [
        stripTODOText: true
        withTag: "story"
      ,
        stripTODOText: true
        withTag: "enhancement"
      ,
        stripTODOText: true
        withTag: "feature"
      ,
        stripTODOText: true
        withTag: "chore"
      ]
      closeIssues: [
        withTag: ""
        listName: "DONE"
      ]
