import { zodResolver } from "@hookform/resolvers/zod"
import { useForm } from "react-hook-form"
import { z } from 'zod'

const schema = z.object({
  title: z.string().min(5, {message: 'Title must be at least 5 characters long'}),
  emotion: z.string().min(3, {message: 'The emotion field must have at least 3 characters'}),
  body: z.string().min(128, {message: 'Your journal must be a minimum of 128 characters long'})
})

type FormData = z.infer<typeof schema>
type JournalEntry = FormData & 
{ 
  id: string,
  date: Date
 }

export const AddJournalForm = () => {
  const {
    register, 
    handleSubmit, 
    reset, 
    formState: {errors}
  } = useForm<FormData>({ resolver: zodResolver(schema) })

  const onFormSubmit = (data: FormData) => {
    // 1. Create a unique ID for the journal entry.
    const uuid = crypto.randomUUID()
    
    // 2. Add the current timestamp for the journal entry.
    const entry: JournalEntry = {...data, id: uuid, date: new Date()}

    // 3. Retrieve the journal entries from storage.
    const hasJournals = localStorage.getItem('journals')
    const journalEntries = hasJournals ? JSON.parse(hasJournals) : []
    // 4. Save the journal entry to storage
    journalEntries.push(entry)
    const newEntry = JSON.stringify(journalEntries)

    localStorage.setItem('journals', newEntry)
    reset()
  }

  return (
    <form className="flex flex-col gap-3" onSubmit={handleSubmit(onFormSubmit)} >
      <label className="input w-full">
        Journal Title
        <input type="text" 
          id="title" 
          className="grow" 
          placeholder="Give your journal entry a nice title" 
          {...register('title')}
        />
      </label>
      {errors.title && (
        <span className="mb-2 font-medium text-red-500">
          {errors.title.message}
        </span>
      )}
      <div className="flex flex-col">
      <label htmlFor="emotion" className="form-control w-full">
        How are you feeling today?
      </label>
        <select
          id="emotion"
          defaultValue="Happy"
          className="select select-bordered w-full"
          {...register('emotion')}
        >
          <option>Happy</option>
          <option>Neutral</option>
          <option>Sad</option>
        </select>
      </div>
       {errors.emotion && (
        <span className="mb-2 font-medium text-red-500">
          {errors.emotion.message}
        </span>
      )}
      <fieldset className="fieldset">
        <legend className="fieldset-legend">Content</legend>
        <textarea 
          id="body" 
          className="textarea w-full" 
          rows={10} 
          placeholder="Write something..." 
          {...register('body')}
        />
      </fieldset>
       {errors.body && (
        <span className="mb-2 font-medium text-red-500">
          {errors.body.message}
        </span>
      )}
      <button type="submit" className="btn btn-primary w-full">Save Journal</button>
    </form>
  )
}
