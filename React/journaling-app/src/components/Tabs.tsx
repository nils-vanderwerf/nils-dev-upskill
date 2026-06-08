import { useState } from "react"

interface Props {
  onSelectTab: (tab: string) => void
}

export const Tabs = ({onSelectTab}: Props) => {
  const [selectedTab, setSelectedTab] = useState('add')

  const handleToggleTab = (selectedTab: string) => {
    setSelectedTab(selectedTab)
    onSelectTab(selectedTab)
  }
  return (
    <div role="tablist" className="tabs tabs-box tabs-sm w-full">
      <a 
        role="tab" 
        className={`flex-1 tab ${selectedTab == 'add' && 'bg-blue-600 text-white tab-active font-bold' }`}
        onClick={() => handleToggleTab('add')}
      >
        Add Entry
      </a>
      <a 
        role="tab" 
        className={`flex-1 tab ${selectedTab == 'entries' && 'bg-blue-600 text-white tab-active font-bold' }`}
        onClick={() => handleToggleTab('entries')}
      >
        Journal Entries
      </a>
    </div>
  )
}
