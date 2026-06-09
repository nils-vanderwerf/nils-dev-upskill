import { ImHappy2 } from 'react-icons/im'
import { ImNeutral2 } from 'react-icons/im'
import { ImSad2 } from 'react-icons/im'

type Journal = {
  id: string
  title: string
  emotion: string
  body: string
  date: string
}

type Props = {
  journal: Journal
  onDelete: (id: string) => void
  onClose: () => void
  formatDate: (date: string) => string
}

export const ShowJournal = ({ journal, onDelete, onClose, formatDate }: Props) => {
  return (
    <div className="relative overflow-hidden rounded-xl bg-white">
      {journal.emotion == 'Sad' ? (
        <ImSad2 size={128} className="absolute -top-4 -right-4 z-0 text-gray-200" />
      ) : journal.emotion == 'Happy' ? (
        <ImHappy2 size={128} className="absolute -top-4 -right-4 z-0 text-gray-200" />
      ) : (
        <ImNeutral2 size={128} className="absolute -top-4 -right-4 z-0 text-gray-200" />
      )}
      <div className="relative z-10 flex max-h-[640px] flex-col overflow-y-scroll p-8">
        <h2 className="font-playfair z-10 mb-2 text-4xl font-bold">{journal.title}</h2>
        <h3 className="mb-4 text-gray-500">Created at: {formatDate(journal.date)}</h3>
        <p>{journal.body}</p>
        <div className="flex justify-between gap-2">
          <button className="btn mt-2 flex-1" onClick={() => onDelete(journal.id)}>
            Delete
          </button>
          <button className="btn btn-secondary mt-2 flex-1" onClick={onClose}>
            Close
          </button>
        </div>
      </div>
    </div>
  )
}
