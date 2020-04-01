/usr/local/Cellar/templative/0.2.0/libexec/bin/pip install -v --no-deps --no-binary :all: --ignore-installed /private/tmp/templative--Pillow-20200
Last 15 lines from /Users/oliverbarnum/Library/Logs/Homebrew/templative/26.pip:
  File "/usr/local/Cellar/templative/0.2.0/libexec/lib/python3.7/site-packages/pip/_internal/cli/base_command.py", line 186, in _main
    status = self.run(options, args)
  File "/usr/local/Cellar/templative/0.2.0/libexec/lib/python3.7/site-packages/pip/_internal/commands/install.py", line 404, in run
    use_user_site=options.use_user_site,
  File "/usr/local/Cellar/templative/0.2.0/libexec/lib/python3.7/site-packages/pip/_internal/req/__init__.py", line 71, in install_given_reqs
    **kwargs
  File "/usr/local/Cellar/templative/0.2.0/libexec/lib/python3.7/site-packages/pip/_internal/req/req_install.py", line 829, in install
    scheme=scheme,
  File "/usr/local/Cellar/templative/0.2.0/libexec/lib/python3.7/site-packages/pip/_internal/operations/install/legacy.py", line 72, in install
    cwd=install_req.unpacked_source_directory,
  File "/usr/local/Cellar/templative/0.2.0/libexec/lib/python3.7/site-packages/pip/_internal/utils/subprocess.py", line 275, in runner
    spinner=spinner,
  File "/usr/local/Cellar/templative/0.2.0/libexec/lib/python3.7/site-packages/pip/_internal/utils/subprocess.py", line 242, in call_subprocess
    raise InstallationError(exc_msg)
pip._internal.exceptions.InstallationError: Command errored out with exit status 1: /usr/local/Cellar/templative/0.2.0/libexec/bin/python3.7 -u -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/private/tmp/pip-req-build-ut74a1p_/setup.py'"'"'; __file__='"'"'/private/tmp/pip-req-build-ut74a1p_/setup.py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' install --record /private/tmp/pip-record-9sw3klt8/install-record.txt --single-version-externally-managed --compile --install-headers /usr/local/Cellar/templative/0.2.0/libexec/bin/../include/site/python3.7/Pillow Check the logs for full command output.