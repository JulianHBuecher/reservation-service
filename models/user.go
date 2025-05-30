package models

import (
	"fmt"
	"time"
)

type UserI interface {
	Id() string
	Name() string
	FamilyName() string
	FullName() string
	Status() string
	BirthDate() time.Time
	Age() time.Duration
}

type user struct {
	id string
	name string
	familyName string
	status string
	birthDate time.Time
	createdAt time.Time
}

func (u *user) Id() string {
	return u.id
}

func (u *user) Name() string {
	return u.name
}

func (u *user) FamilyName() string {
	return u.familyName
}

func (u *user) FullName() string {
	return fmt.Sprintf("%s, %s", u.familyName, u.name)
}

func (u *user) Status() string {
	return u.status
}

func (u *user) BirthDate() time.Time {
	return u.birthDate
}

func (u *user) Age() time.Duration {
	return time.Now().Sub(u.birthDate)
}