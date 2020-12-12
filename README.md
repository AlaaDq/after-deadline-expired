# laravel backend
# important note:

# I didn't care about creation logic of the categories
Because you asked me to use seeder at the end of the test file

But as improvement in order to prevent
Recreation of the same category more than one time

# We can use firstOrCreate method Like below


![image](https://user-images.githubusercontent.com/45366622/101992437-ee548700-3cbb-11eb-96c6-5df3ab18d70f.png)

![FireShot Capture 234 - NgTradinos - localhost](https://user-images.githubusercontent.com/45366622/101992472-41c6d500-3cbc-11eb-9731-e831734068c7.png)



# But you mentioned that I don't have to worry about this process for the test purposes and depend on seeder 😅

# another theory is that using a select drop down in the form to select the category 
# But if there were about ( hundreds or millions ) of categories then it will turn into a mess !!

# So it depends on what you really want 
# I just solved it as how I understand and see the problem and the test so please don't consider this as a bug  🐞 
