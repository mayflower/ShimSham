roleAdmin = Role.create({ 'name' => 'admin' })
roleStudent = Role.create({ 'name' => 'student' })
roleInstructor = Role.create({ 'name' => 'instructor' })

userAdmin =  User.create({
                             'name' => 'admin',
                             'email' => 'admin@shimsham.com',
                             'password' => 'password'
                         })
userInstructor =  User.create({
                                  'name' => 'instructor',
                                  'email' => 'instructor@shimsham.com',
                                  'password' => 'password'
                              })
userStudent =  User.create({
                               'name' => 'student',
                               'email' => 'student@shimsham.com',
                               'password' => 'password'
                           })

userAdmin.roles = [roleAdmin, roleInstructor, roleStudent]
userInstructor.roles = [roleInstructor, roleStudent]
userStudent.roles = [roleStudent]