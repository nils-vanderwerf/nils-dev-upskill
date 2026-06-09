import { useEffect, useState } from 'react'
import { ShowJournal } from './ShowJournal'

export const JournalList = () => {
  useEffect(() => {
    const hasJournals = localStorage.getItem('journals')
    const journalEntries = hasJournals ? JSON.parse(hasJournals) : []
    setJournals(journalEntries)
  }, [])

  const initJournalState = {
    id: '',
    title: '',
    emotion: '',
    body: '',
    date: ''
  }

  const [journal, setJournal] = useState(initJournalState)

  const [journals, setJournals] = useState([initJournalState])

  const formatDate = (date: string) =>
    new Date(date).toLocaleDateString('en-AU', {
      day: 'numeric',
      month: 'long',
      year: 'numeric'
    })

  const onViewJournal = (journal: {
    id: string
    title: string
    emotion: string
    body: string
    date: string
  }) => {
    setJournal(journal)
  }

  const closeJournal = () => {
    setJournal(initJournalState)
  }

  const deleteJournal = (id: string) => {
    const updatedJournals = journals.filter(journal => journal.id !== id)
    setJournals(updatedJournals)
    localStorage.setItem('journals', JSON.stringify(updatedJournals))
    setJournal(initJournalState)
  }

  return (
    <>
      {journal.id === '' && (
        <div className="grid grid-cols-2 gap-3">
          {journals.map(journal => (
            <div
              className="rounded-lg bg-white p-4 transition duration-300 ease-in-out hover:scale-105 hover:cursor-pointer hover:shadow-xl"
              key={journal.id}
              onClick={() => onViewJournal(journal)}
            >
              <h3 className="font-playfair mb-2 text-xl font-bold">
                {journal.title}
              </h3>
              <h4>Created at: {formatDate(journal.date)}</h4>
            </div>
          ))}
        </div>
      )}
        
      {journals.length == 0 && (<div className='w-full rounded-xl bg-white p-3'>There are no journal entries yet</div>)}

      {journal.id != '' && (
        <ShowJournal
          journal={journal}
          onDelete={deleteJournal}
          onClose={closeJournal}
          formatDate={formatDate}
        />
      )}
    </>
  )
}
