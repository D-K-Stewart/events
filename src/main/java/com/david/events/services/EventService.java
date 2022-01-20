package com.david.events.services;



import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.david.events.models.Event;
import com.david.events.repositories.EventRepository;

@Service
public class EventService {
	
	
	private EventRepository eventRepository;
	
	public EventService(EventRepository eventRepository) {
		this.eventRepository = eventRepository;
		
	}
	
	public Event oneEvent(Long id) {
		Optional<Event> optionalEvent = eventRepository.findById(id);
		if(optionalEvent.isPresent()) {
			return optionalEvent.get();
			}else {
				return null;
			}
	}
	
	public Event create(Event event) {
		return eventRepository.save(event);
	}
	
	public Event update(Event event) {
		return eventRepository.save(event);
	}
	
	public void destroy(Long id) {
		eventRepository.deleteById(id);
	}
	
	public List<Event> allEvents() {
		return eventRepository.findAll();
	}

}

