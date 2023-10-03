interface UserRequest{
    email: string;
    password: string;
}

class CreateUserService{
    async execute({email, password}: UserRequest){

        console.log(email);

        return {email: email}
    }
}

export {CreateUserService}