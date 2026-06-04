import { User } from '../types/user'

const ProfilePage = ({ user, onUpdate }: User) => {
    return (
        <>
            <h1>Profile Page</h1>
            <span>{user.name}</span>
            <button onClick={onUpdate}>Update Name</button>
        </>
    )
}

export default ProfilePage
