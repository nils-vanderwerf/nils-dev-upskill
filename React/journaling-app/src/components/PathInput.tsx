export const PathInput = () => {
  return (
    <form>
      <label className="input w-full">
        Path
        <input type="text" className="grow" placeholder="src/app/" />
        <span className="badge badge-neutral badge-xs">Optional</span>
      </label>
    </form>
  )
}
