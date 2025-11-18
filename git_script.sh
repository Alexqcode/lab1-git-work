   16 git remote add origin https://github.com/Alexqcode/lab1-git-work.git
   17  git add .
   18  git commit -m "init lab work"
   19  git checkout -b develop
   20  git push -u origin main develop
   21  git checkout -b feature/calculator
   22  git add Calculator.cs
   23  git commit -m "feat: добавлен калькулятор"
   24  git status
   25  git add Calculator.cs
   26  git commit -m "feat: добавлен калькулятор"
   27  git checkout develop
   28  git checkout -b feature/validation
   29  git add .
   30  git commit -m "feat: добавленая функция валидации"
   31  git rebase develop
   32  git checkout develop
   33  git checkout -b feature/additional-feature
   34  git log --oneline --graph
   35  git checkout feature/validation
   36  git status
   37  git checkout develop
   38  git checkout feature/validation
   39  git rebase develop
   40  git log --oneline --graph
   41  git reset --mixed HEAD~1
   42  git add ValidationService.cs
   43  git rebase develop
   44  git commit -m "feat: добавленая функция валидации"
   45  git rebase develop
   46  git branch
   47  git rebase develop feature/validation
   48  git checkout develop
   49  git checkout feature/validation
   50  git add Program.cs
   51  git commit -m "update"
   52  git rebase develop feature/validation
   53  git checkout develop
   54  git branch
   55  git pull origin develop
   56  git checkout feature/validation
   57  git rebase develop
   58  git checkout feature/additional-feature
   59  git add Calculator.cs
   60  git coomit -m "feat: добавлен функционал в Calculate.cs"
   61  git commit -m "feat: добавлен функционал в Calculate.cs"
   62  git checkout develop
   63  git log --oneline --graph
   64  git rebase develop feature/validation
   65  git branch
   66  git checkout develop
   67  git log --oneline --graph
   68  git rebase develop feature/validation
   69  git checkout develop
   70  git checkout feature/validation
   71  git rebase develop
   72  git log --oneline --graph
   73  git log develop..feature/validation --oneline
   74  git log feature/validation..develop --oneline
   75  git branch
   76  git checkout develop
   77  git cherry-pick feature/additional-feature
   78  git merge --no-ff feature/calculator -m "merge: добавлена функциональность калькулятора"
   79  git add Calculator.cs
   80  git commit -m "update"
   81  git log --oneline 
   82  git merge --no-ff feature/calculator -m "merge: добавлена функциональность калькулятора"
   83  git log --oneline 
   84  git merge --no-ff feature/validation -m "merge: добавлена функциональность валидации"
   85  git add Calculator.cs
   86  git commit -m "update"
   87  echo "test content" > testfile.txt
   88  git add testfile.txt
   89  git commit -m "test: add test file for revert demo"
   90  git revert HEAD --no-edit
   91  git reset --soft HEAD~1
   92  git reset --hard HEAD~1
   93  echo "temptorary content" > tempfile.txt
   94  git restore tempfile.txt
   95  git add tempfile.txt
   96  git commit -m "test: add tepmfile.txt"
   97  git restore tempfile.txt
   98  git log --oneline
   99  git reset --soft HEAD~1
  100  git add tempfile.txt
  101  git commit -m "test: add tepmfile.txt"
  102  git add tempfile.txt
  103  git restore tempfile.txt
  104  git restore --staged tempfile.txt
  105  git restore tempfile.txt
  106  echp '#!/bin/sh
if [ -z "$(cat $1)" ]; then
echo "Сообщение коммита не может быть пустым!"
exit 1
fi' > .git/hooks/commit-msg
  107  echo '#!/bin/sh
if [ -z "$(cat $1)" ]; then
echo "Сообщение коммита не может быть пустым!"
exit 1
fi' > .git/hooks/commit-msg
  108  echo '#!/bin/sh
echo "Проверка компиляции..."
dotnet build
if [ $? -ne 0 ]; then
echo "Ошибка компиляции! Исправьте ошибки перед пушем."
exit 1
fi
echo "Команда успешна!"' > .git/hooks/pre-push
  109  chmod +x .git/hooks/pre-commit
  110  chmod +x .git/hooks/commit-msg
  111  chmod +x .git/hooks/pre-push
  112  git checkout -b conflict-branch-1
  113  git add Program.cs
  114  git commit -m "change: update title is program"
  115  git commit -m "change: update title in program"
  116  nano .git/hooks/pre-commit
  117  git commit -m "change: update title is program"
  118  git log --oneline
  119  git checkout develop
  120  git checkout -b conflict-branch-2
  121  git add Program.cs
  122  git commit -m "change: modify program title"
  123  git checkout develop
  124  git merge conflict-branch-1 --no-ff -m "merge first conflict branch" git merge conflict-branch-2 --no-ff -m "merge second conflict branch" || true
  125  git merge conflict-branch-1 --no-ff -m "merge first conflict branch"
  126  git merge conflict-branch-2 --no-ff -m "merge second conflict branch" || true
  127  git add Program.cs
  128  git commit -m "resolve: merge conflict in program title"
  129  git tag v1.0
  130  git push origin --tags
  131  dotnet build
  132  nano .git/hooks/pre-push
  133  git add Program.cs
  134  git commit -m "resolve: merge conflict in program title"
  135  git push origin --tags
  136  git checkout main
  137  git merge --no-ff develop -m "final merge: complete lab work v1.0"
  138  git push origin --all
  139  git push origin --tags