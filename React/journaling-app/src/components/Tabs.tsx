import { useState } from "react"

export const Tabs = () => {
  const [selectedTab, setSelectedTab] = useState('add')

  const handleSelectedTab = (selectedTab: string) => {
    setSelectedTab(selectedTab)
  }
  return (
    <div role="tablist" className="tabs tabs-box tabs-sm w-full">
      <a 
        role="tab" 
        className={`flex-1 tab ${selectedTab == 'add' && 'bg-blue-600 text-white tab-active font-bold' }`}
        onClick={() => handleSelectedTab('add')}
      >
        Add Entry
      </a>
      <a 
        role="tab" 
        className={`flex-1 tab ${selectedTab == 'entries' && 'bg-blue-600 text-white tab-active font-bold' }`}
        onClick={() => handleSelectedTab('entries')}
      >
        Journal Entries
      </a>
    </div>
  )
}
