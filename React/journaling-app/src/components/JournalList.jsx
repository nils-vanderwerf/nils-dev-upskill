import { useEffect, useState } from "react"

export const JournalList = () => {
  useEffect(() => {
    const hasJournals = localStorage.getItem('journals')
    const journalEntries = hasJournals ? JSON.parse(hasJournals) : []
    setJournals(journalEntries)
    console.log("JOURNAL ENTRIES", journalEntries)
  }, [])

  const [journals, setJournals] = useState([])

  return (
    <>
    <div className="grid grid-cols-2 gap-3">
      {journals.map(journal => (
        <div className="rounded-lg bg-white p-4" key={journal.id}>
          <h3 className="mb-2 font-bold text-xl">{journal.title}</h3>
          <h4>Created at: {new Date(journal.date).toLocaleDateString('en-AU', { day: 'numeric', month: 'long', year: 'numeric' })}</h4>
        </div>
      ))}
    </div>
    </>
  )
}
