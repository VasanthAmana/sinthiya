https://www.mathblog.dk/tools/infix-postfix-converter/

mkdir sinthiya
cd sinthiya
bundle init
// opened Gemfile and added rspec reference
guard
bundle install
bundle exec rspec --init

// to run one time
bundle exec rspec

// incremental development
bundle exec guard

Git Commands
// one time
git clone git@github.com:VasanthAmana/sinthiya.git


git status
git add
git commit -m"Adding .rspec file"

// to push to remote
git push origin master

git pull


// added --format documentation in .rspec file