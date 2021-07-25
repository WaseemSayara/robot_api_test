import sys
import robot

args = sys.argv

print(args)

if len(args) > 1:
    if args[1] == "all":
        robot.run(".")

    elif args[1] == "get":
        print("entered get")
        robot.run("get_suite")

    elif args[1] == "post":
        robot.run("post_suite")

    elif args[1] == "put":
        robot.run("put_suite")

    elif args[1] == "patch":
        robot.run("patch_suite")

    elif args[1] == "delete":
        robot.run("delete_suite")
