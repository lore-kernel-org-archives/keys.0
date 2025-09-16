Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B5B27A46A
	for <keys@linux.kernel.org>; Tue, 16 Sep 2025 20:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758053099; cv=none; b=DTzn+fu47/2EqIePegiz4lPW9eVVh1uoAOYeEJNv0ip+D7nom1jh2znLhYJt7vAkMc1Mbos0olesJ0/Jn2P9M8j5KrV9W2Dk+3RUHNcX/TYDDklLOoF8hJ2WqYsCeZvsW3Jj72JaW3gS/Wl0BGq89tzyXDpNoRgSbgQ9R4PzV+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758053099; c=relaxed/simple;
	bh=y51LGKmxI94h1hBQwFSXAtHjzB9Z2ECXcoAP0L6Em1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bJuyS/MJza1yXIEMkjO/HxH/2AzpwxxbOhVYmQBIXstQU6/AntCuu49c7EA2MXHM2V57FXtv91L9Pcwx4jbATrr1ut6Kcckj3M0qexc8uJynxajEqz+A3x5ssH8Hwmj8hofJCI8BgurWrgD1deaMifhqL/cydzYHa6NFeYfq97w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=KsGUXAhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="KsGUXAhd"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87598C4CEF0;
	Tue, 16 Sep 2025 20:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1758053098;
	bh=y51LGKmxI94h1hBQwFSXAtHjzB9Z2ECXcoAP0L6Em1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KsGUXAhdZ+kBo6MGZ8isaGyTlJgNuVdnB1mE6RBHhZ6lb1Ol/ZhKPEyNlL0tBc5C1
	 AjSFqAvB9ut5kihIeACfDTI0TMsBcsCdUPmL3cA+uBXc5/TpV6H1AoWN0VVFqjFq4V
	 lCzDz7+zRCb1J5gxoIO4vQ9woK5aTP3BM8LoNuu4=
Date: Tue, 16 Sep 2025 16:04:57 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Nishanth Menon <nm@ti.com>
Cc: keys@linux.kernel.org
Subject: Re: Update expired key for Nishanth Menon
Message-ID: <20250916-sociable-mini-capybara-cbfcbf@lemur>
References: <20250916155707.gyyy5tiu4swqlwwo@gecko>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250916155707.gyyy5tiu4swqlwwo@gecko>

On Tue, Sep 16, 2025 at 10:57:07AM -0500, Nishanth Menon wrote:
> Attached renewed keys for Nishanth Menon <nm@ti.com>
> F8A2869354EB823217A31A34DDB5849D1736249D

Updated, thanks!

-K
