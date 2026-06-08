import { Header } from './components/Header'
import { Tabs } from './components/Tabs'
import { AddJournalForm } from './components/AddJournalForm'

export const App = () => {
  return (
    <>
      <div className='flex w-[640px] flex-col py-4 mx-auto'>
        <div className="flex flex-col gap-4 rounded-xl bg-white p-4">
          <Header />
          <Tabs />
          <AddJournalForm />
        </div>
      </div>
    </>
  )
}

export default App
