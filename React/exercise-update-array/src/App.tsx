import { useState } from 'react'

const App = () => {
    const [tasks, setTasks] = useState([
        {
            id: 1,
            name: 'Buy Vegetables',
            description: 'Need to buy vegetables at the grocery store'
        },
        {
            id: 2,
            name: 'Exercise',
            description: 'Need to exercise for 3 hours'
        },
    ])

    const handleUpdateArray = () => {
        setTasks(tasks.map(task => task.name === 'Exercise' ? {...task, name: 'Something else'} : task))
    }

    return (
        <>
            <ul>
                {tasks.map((task, index) => (
                    <li key={index}>{task.name}</li>
                ))}
            </ul>
            <button onClick={handleUpdateArray}>Update</button>
        </>
    )
}

export default App
