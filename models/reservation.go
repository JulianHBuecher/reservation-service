package models

import "time"

type ReservationI interface {
	Id() string
	StartAt() time.Time
	EndAt() time.Time
	Duration() time.Duration
	CreatedAt() time.Time
	CreatedBy() UserI
}

type reservation struct {
	id string
	startAt time.Time
	endAt time.Time
	createdAt time.Time
	createdBy UserI
}

func (r *reservation) Id() string {
	return r.id
}

func (r *reservation) StartAt() time.Time {
	return r.startAt
}

func (r *reservation) EndAt() time.Time {
	return r.endAt
}

func (r *reservation) Duration() time.Duration {
	return r.endAt.Sub(r.startAt)
}

func (r *reservation) CreatedAt() time.Time {
	return r.createdAt
}

func (r *reservation) CreatedBy() UserI {
	return r.createdBy
}