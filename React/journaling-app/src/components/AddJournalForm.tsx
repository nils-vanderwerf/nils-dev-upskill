export const AddJournalForm = () => {
  return (
    <form className="flex flex-col gap-3">
      <label className="input w-full">
        Journal Title
        <input type="text" className="grow" placeholder="Give your journal entry a nice title" />
      </label>
      <div className="flex flex-col">
      <label htmlFor="emotions" className="form-control w-full">
        How are you feeling today?
      </label>
        <select
          id="emotions" 
          className="select select-bordered w-full"
        >
          <option selected>Happy</option>
          <option>Neutral</option>
          <option>Sad</option>
        </select>
      </div>

      <fieldset className="fieldset">
        <legend className="fieldset-legend">Content</legend>
        <textarea className="textarea w-full" rows={10} placeholder="Write something..." />
      </fieldset>
      <button type="submit" className="btn btn-primary w-full">Save Journal</button>
    </form>
  )
}
