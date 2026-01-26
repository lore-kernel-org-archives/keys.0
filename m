Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DA83BB4A
	for <keys@linux.kernel.org>; Mon, 26 Jan 2026 14:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769438737; cv=none; b=M3R96fHs1B0pxSxGOsHoFEhAx1IeLFML/5i4PC7qKyYUlemppNl09cF38ftno3rURmXlxQlwrztOqe26Gm0xOD72XkQB1FInGukw6UIxtYrJucIRHTEwmgL9dTDf/I12oTbpwUqt2Qybg/jNjtmlfkquwci4NYGEyvDSxbqDmaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769438737; c=relaxed/simple;
	bh=IQT4AtwK4IhhAPjSWFtgclMtgXcgwzFi4mIJxGdG7wA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AKuz+/JnzkldQocwCajocwdGhQmMYPQWQlhKQpY+Qoe61XuuQOJIrhpQWTysm6ldbEneAO5KwE1VB/AuPDtC1KUy/dvhlBraOWqLPaQvRgDTjbM1bSIxy3P2hsPVsIc0UdoIN3TfyuHzHW36UIaaK8UkEu+zP9H+3SFKnqCiEXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQou5hYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQou5hYA"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD62FC116C6;
	Mon, 26 Jan 2026 14:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769438737;
	bh=IQT4AtwK4IhhAPjSWFtgclMtgXcgwzFi4mIJxGdG7wA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PQou5hYAjkm4lz1SP46QSy+wREo7AQE7zKymLY3qHBgY413wpveSIP/8TJgye4FYl
	 EB74K3D3jNnGkIO3dNn4dsmBl2Up0G7TVuBv3Ovrzk3AKKFL9xJYa7/XnGUhHhdmAx
	 VMefYTSYyubDwX2HDISQnu4KWttThULh0Cg1ueBEizyHmO3invbuw7o7i3eatKe3HD
	 YQZeOmI8PLubqxNpeLHYYYkeoDaNdmvrqIV6Fc3bIKhQjZo2ITbtgF6tjXBTLRkFrW
	 x1eoNSQNroNi6E30I7jdql3EOOBK+ZfdkyAgiz7mjirEAcNPIfQ16rqPIYTzVn+M+4
	 1XJeoSVPQwxzg==
Date: Mon, 26 Jan 2026 09:45:35 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: rppt's key update
Message-ID: <20260126-archetypal-translucent-macaque-3adf9f@lemur>
References: <aXTz_7VEHnsTRRqb@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aXTz_7VEHnsTRRqb@kernel.org>

On Sat, Jan 24, 2026 at 06:31:59PM +0200, Mike Rapoport wrote:

Updated, thanks.
