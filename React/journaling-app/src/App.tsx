import { Header } from './components/Header'
import { Tabs } from './components/Tabs'
import { AddJournalForm } from './components/AddJournalForm'
import { JournalList } from './components/JournalList'
import { useState } from 'react'

export const App = () => {
  const [currentTab, setCurrentTab] = useState('add')

  const handleTab = (selectedTab: string) => {
    setCurrentTab(selectedTab)
  }
  return (
    <>
      <div className='flex w-[640px] flex-col py-4 mx-auto'>
        <div className="flex flex-col gap-4 rounded-xl bg-white p-4">
          <Header />
          <Tabs onSelectTab={handleTab} />
          <div className='flex flex-col gap-3 rounded-xl bg-gray-200 p-4'>
            {currentTab === 'add' ? <AddJournalForm onEntryCreated={() => setCurrentTab('entries')} /> : <JournalList/> }
          </div>
        </div>
      </div>
    </>
  )
}

export default App
