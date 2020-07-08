output "rds-arn" {
    value = aws_db_instance.groupdb.arn
}

output "rds-username" {
    value = aws_db_instance.groupdb.username
}

output "rds-endpoint" {
    value = aws_db_instance.groupdb.endpoint
}

