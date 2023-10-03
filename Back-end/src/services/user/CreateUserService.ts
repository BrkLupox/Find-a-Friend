import prismaClient from '../../prisma'

interface UserRequest{
    email: string;
    password: string;
}

class CreateUserService{
    async execute({email, password}: UserRequest){

        //verificar se ele botou o email
        if(!email){
            throw new Error("Email Incorrect")
        }

        //Verificar se esse email ja está cadastrado na plataforma
        const userAlreadyExists = await prismaClient.login.findFirst({
            where:{
                email: email
            }


        })
        if(userAlreadyExists){
            throw new Error("User already exists")
        }

        const user = await prismaClient.login.create({
            data:{
                email: email,
                password: password,
            },
            select:{
                id: true,
                email: true,
            }
        })


        return user;
        }

    }


export {CreateUserService}