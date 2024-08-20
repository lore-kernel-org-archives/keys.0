Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F8541C71
	for <keys@linux.kernel.org>; Tue, 20 Aug 2024 04:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.107.74.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724129573; cv=none; b=bGlN2SMjYgK4Rb5tCV9rSjhaPYWWr2tyDi1vvOrF5/mZQquUbQaiGH11iyx00JH+AUTM4pRf9NbkxJezqq/yeNLY0TdWWyxOzWHA13zbPHC7v+B3+ml31Mb3u/e1qNvs0tWExFInriLOU1PHTW6FCuMNbHgYhGRc5c2S7VCdD0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724129573; c=relaxed/simple;
	bh=j6KWkHXAspa4L1Gc/uz04QcXUqWq9A9SuSaXn4kWosQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=MP/KKvqnZ570jTpw/xl0sb4athR3a/teJ9YnPSHnTUFZgThB2xz8wzaKf6QtxAyRfHeUYhJKf1BV7c6jRxJQ9t4rCEH9j+Oat4ze2x8lItNAAn61TPdcVZPg7KKL9EBEb/wInHcq43u0N+j8Zoxmw8pWn2L1WZlEh/QMwfW05p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ellerman.id.au; spf=pass smtp.mailfrom=ellerman.id.au; dkim=pass (2048-bit key) header.d=ellerman.id.au header.i=@ellerman.id.au header.b=gG6w+yKB; arc=none smtp.client-ip=150.107.74.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ellerman.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ellerman.id.au
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ellerman.id.au header.i=@ellerman.id.au header.b="gG6w+yKB"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
	s=201909; t=1724129567;
	bh=kGIY6zEfTtQS61UrMCRECljN5YpwjK0JZXGXudISuqE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=gG6w+yKB5A7cuxuwrfP6AeYuUd2CurZ57+gzqy2i/4IbODyQVTSrzSFBBozjrLqYx
	 Ho2w9hV2m96o6RzVt/tRJaoq3+nQcCkZy5ofWp+s4uANeLJcoFyWic5efkeqSsbG3t
	 YnfAygVesP0VuFb9pSKz3DfNmU2MLP7RDpWjYOsz3BUJ9+jOV4SvGi1CGfyZpUBx98
	 qPLpW5WnTT3++xkrQclOmZREOUWb1d29+FeyLuVat+6EwIqi6mZZKrbs1IyxKruuBQ
	 g6de73/9QcwxOD6O2yiezbCRPOqaCGigYAalW/4/a3hsAZ++YWR5cxdl5z+3hwYVjW
	 DjsfkN/lychzQ==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4Wnxsq4dmbz4wbR;
	Tue, 20 Aug 2024 14:52:47 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: New GPG key
In-Reply-To: <20240819-majestic-logical-galago-dcd95a@lemur>
References: <87o75pp2bt.fsf@mail.lhotse>
 <20240819-majestic-logical-galago-dcd95a@lemur>
Date: Tue, 20 Aug 2024 14:52:47 +1000
Message-ID: <874j7fu76o.fsf@mail.lhotse>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Konstantin Ryabitsev <konstantin@linuxfoundation.org> writes:
> On Mon, Aug 19, 2024 at 02:24:22PM GMT, Michael Ellerman wrote:
>> Hi,
>> 
>> Can you please add my new GPG key to the repo.
>
> For the record, can you follow up with the reason why you're replacing your
> main key?

My old key is a combined signing/certification key, and it wasn't stored
offline. AFAIK it's still secure, but I wanted to start fresh.

My new key was generated following the docs you wrote and has sub keys
etc. with the master key and another signing key stored offline.

cheers
