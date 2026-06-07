import { useForm, FieldValues } from 'react-hook-form'

interface FormData {
    name: string
    age: number
}

const App = () => {
    const { register, handleSubmit, formState: {errors} } = useForm<FormData>()
    const onFormSubmit = (data: FieldValues) => console.log(data)

    return (
        <div className="flex flex-col h-screen justify-center items-center">
            <form onSubmit={handleSubmit(onFormSubmit)}>
                <div className="flex flex-col gap-2">
                    <label htmlFor="name">Name</label>
                    <input
                        {...register('name', {required: true, minLength: 3})}
                        id="name"
                        type="text" 
                        placeholder="Enter your name"
                        className="border border-gray-200 px-4 py-2 rounded-xl"
                    />
                    {errors.name?.type === 'required' && (
                        <p className="text-red-500">The name field is required</p>
                    )}
                     {errors.name?.type === 'minLength' && (
                        <p className="text-red-500">The name field must have 3 characters minimum</p>
                    )}
                </div>
                <div className="flex flex-col gap-2 mt-6">
                    <label htmlFor="name">Age</label>
                    <input
                        {...register('age')}
                        id="age"
                        type="number" 
                        placeholder="Enter your age"
                        className="border border-gray-200 px-4 py-2 rounded-xl"
                    />
                </div>
                <button className="p-4 px-6 mt-3 bg-gray-800 text-white rounded-xl ">Save</button>
            </form>
        </div>
    )
}

export default App
