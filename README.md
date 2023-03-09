# Sanilo Password Manager

Sanilo Password Manager is a simple command-line password manager written in Bash. It allows users to store their login credentials for different accounts in a plain text file. Users can access their saved passwords by running the password_manager.sh script and selecting one of the available options.

## Usage

To use Sanilo Password Manager, clone the repository to your local machine and navigate to the project directory. Then, run the following command to display the available options:

`bash ./password_manager.sh -h`



This will display a help message with the available options:

- `-sa, --add`: Add a new password.
- `-sg, --get`: Retrieve an existing password.
- `-su, --update`: Update an existing password.
- `-sd, --delete`: Delete an existing password.
- `-h, --help`: Display the help message.

<br>
<br>
<hr>
<br>

| Description  | Command                            |
|--------------|------------------------------------|
| To add a new password, run the following command and follow the prompts:| `~$ bash /password_manager.sh -sa` |
| To retrieve an existing password, run the following command and follow the prompts:| `bash ./password_manager.sh -sg`   |
|To update an existing password, run the following command and follow the prompts:| `bash ./password_manager.sh -su`   |
|To delete an existing password, run the following command and follow the prompts:| `bash ./password_manager.sh -sd`   |


<br> 


## Security

Sanilo Password Manager stores passwords in a plain text file. As a result, it is not recommended for storing sensitive information. If you choose to use Sanilo Password Manager, please ensure that you keep the password file secure and do not share it with others.

## Contributing

If you would like to contribute to Sanilo Password Manager, feel free to fork the repository and submit a pull request. Please ensure that your code follows the Bash coding standards and includes appropriate documentation.

